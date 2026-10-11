output "ecrpublic_images_lookup_image_ids" {
  description = "Map of image_ids values across all ecrpublic_images_lookup, keyed the same as var.ecrpublic_images_lookup"
  value       = { for k, v in data.aws_ecrpublic_images.ecrpublic_images_lookup : k => v.image_ids if v.image_ids != null && length(v.image_ids) > 0 }
}
output "ecrpublic_images_lookup_images" {
  description = "Map of images values across all ecrpublic_images_lookup, keyed the same as var.ecrpublic_images_lookup"
  value       = { for k, v in data.aws_ecrpublic_images.ecrpublic_images_lookup : k => v.images if v.images != null && length(v.images) > 0 }
}
output "ecrpublic_images_lookup_region" {
  description = "Map of region values across all ecrpublic_images_lookup, keyed the same as var.ecrpublic_images_lookup"
  value       = { for k, v in data.aws_ecrpublic_images.ecrpublic_images_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ecrpublic_images_lookup_registry_id" {
  description = "Map of registry_id values across all ecrpublic_images_lookup, keyed the same as var.ecrpublic_images_lookup"
  value       = { for k, v in data.aws_ecrpublic_images.ecrpublic_images_lookup : k => v.registry_id if v.registry_id != null && length(v.registry_id) > 0 }
}
output "ecrpublic_images_lookup_repository_name" {
  description = "Map of repository_name values across all ecrpublic_images_lookup, keyed the same as var.ecrpublic_images_lookup"
  value       = { for k, v in data.aws_ecrpublic_images.ecrpublic_images_lookup : k => v.repository_name if v.repository_name != null && length(v.repository_name) > 0 }
}

