<?php
	abstract class Model {
		public function __construct() {
			foreach (static::GetMap() as $field => $column) {
				$this->$field = null;
			}
		}

		public static function GetMap() {
			return array();
		}

		public static function GetMapKey($key) {
			$map = static::GetMap();
			return $map[$key];
		}

		public static function GetTable() {
			return '';
		}

		public function Load($row) {
			foreach(static::GetMap() as $field => $column) {
				$this->$field = $row[$column];
			}
		}

		public function Save() {
			if($this->ID == null) {
				$columns = array();
				$placeholders = array();
				$values = array();

				foreach(static::GetMap() as $field => $column) {
					if($field == 'ID' && $this->ID === null) continue;

					array_push($columns, '`' . $column . '`');
					array_push($placeholders, '?');
					array_push($values, $this->$field);
				}

				$columns = '(' . implode(', ', $columns) . ')';
				$placeholders = '(' . implode(', ', $placeholders) . ')';

				$sql = sprintf('INSERT INTO `%s` %s VALUES %s;', static::GetTable(), $columns, $placeholders);
			} else {
				$fields = array();
				$values = array();

				foreach(static::GetMap() as $field => $column) {
					if($field == 'ID' && $this->ID === null) continue;

					array_push($fields, '`' . $column . '` = ?');
					array_push($values, $this->$field);
				}

				$fields = implode(', ', $fields);

				$sql = sprintf('UPDATE %s SET %s WHERE `%s` = %d', static::GetTable(), $fields, static::GetMapKey('ID'), $this->ID);
			}

			try {
				$q = DB::Prepare($sql);
				$res = $q->execute($values);

				if($res && $this->ID == null) {
					$this->ID = DB::$Connection->lastInsertId();
				}

				return $res;
			} catch(PDOException $ex) {
				$message = 'SQL Error: ' . $ex->getMessage();
				die(View::Error($message));
			}

			return false;
		}

		public function Delete() {
			if($this->ID == null) return false;

			try {
				return DB::Prepare(sprintf('DELETE FROM %s WHERE %s = ?;', static::GetTable(), static::GetMapKey('ID')), $this->ID);
			} catch(PDOException $ex) {
				$message = 'SQL Error: ' . $ex->getMessage();
				die(View::Error($message));
			}
		}

		public static function Get($id) {
			if($id == null) return false;

			try {
				$q = DB::Prepare(sprintf('SELECT * FROM %s WHERE %s = ?;', static::GetTable(), static::GetMapKey('ID')), $id);
				if($q && $q->rowCount() > 0) {
					$ent = new static();
					$ent->Load($q->fetch());
					return $ent;
				}
			} catch(PDOException $ex) {
				$message = 'SQL Error: ' . $ex->getMessage();
				die(View::Error($message));
			}

			return false;
		}

		public static function GetAll($reversed = false) {
			$q = DB::Query('SELECT * FROM ' . static::GetTable() . ' ORDER BY ' . static::GetMapKey('ID') . ($reversed ? ' DESC' : ' ASC'));

			try {
				if($q->execute()) {
					$out = array();
					while ($row = $q->fetch()) {
						$ent = new static();
						$ent->Load($row);

						array_push($out, $ent);
					}
					return $out;
				}
			} catch(PDOException $ex) {
				$message = 'SQL Error: ' . $ex->getMessage();
				die(View::Error($message));
			}

			return false;
		}

		public static function Where($column, $value = null) {
			if($column == null) return false;

			try {
				if(is_array($column)) {

				} else {
					if($value == null) {
						$q = DB::Query(sprintf('SELECT * FROM %s WHERE %s IS NULL', static::GetTable(), $column));
					} else {
						$q = DB::Prepare(sprintf('SELECT * FROM %s WHERE %s = ?', static::GetTable(), $column), $value);
					}
					
					if($q && $q->rowCount() > 0) {
						if($q->rowCount() == 1) {
							$ent = new static();
							$ent->Load($q->fetch());
							return $ent;
						} else {
							$result = array();
							while($row = $q->fetch()) {
								$ent = new static();
								$ent->Load($row);
								array_push($result, $ent);
							}
							return $result;
						}
					}
				}
			} catch(PDOException $ex) {
				$message = 'SQL Error: ' . $ex->getMessage();
				die(View::Error($message));
			}

			return false;
		}
	}