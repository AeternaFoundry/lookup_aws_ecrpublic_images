data "aws_ecrpublic_images" "ecrpublic_images_lookup" {
  for_each = var.ecrpublic_images_lookup

  repository_name = each.value.repository_name
  region          = each.value.region
  registry_id     = each.value.registry_id

  dynamic "image_ids" {
    for_each = each.value.image_ids != null ? each.value.image_ids : []
    content {
      image_digest = image_ids.value.image_digest
      image_tag    = image_ids.value.image_tag
    }
  }
}

