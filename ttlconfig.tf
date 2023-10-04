resource "google_firestore_field" "addtimestamp" {

  for_each   = yamldecode(file("${path.module}/timestamp.yaml"))

  collection = each.value.platformexpirytime.collectiongroup

  field      = each.value.platformexpirytime.timestampfield

 

  index_config {}

  ttl_config {}

 

}
