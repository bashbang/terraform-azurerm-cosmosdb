/* SQL API Variables*/

variable "sql_dbs" {
  type = map(object({
    db_name           = string
    db_throughput     = number
    db_max_throughput = number
  }))
  description = "Map of Cosmos DB SQL DBs to create. Some parameters are inherited from cosmos account."
  default     = {}
}

variable "sql_db_containers" {
  type = map(object({
    container_name           = string
    db_name                  = string
    partition_key_path       = string
    partition_key_version    = number
    container_throughout     = number
    container_max_throughput = number
    indexing_policy_settings = object({
      sql_indexing_mode = string
      sql_included_path = string
      sql_excluded_path = string
    })
    sql_unique_key = list(string)
  }))
  description = "List of Cosmos DB SQL Containers to create. Some parameters are inherited from cosmos account."
  default     = {}
}