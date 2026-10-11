variable "ecrpublic_images_lookup" {
  description = <<EOT
Map of ecrpublic_images_lookup, attributes below
Required:
    - repository_name
Optional:
    - region
    - registry_id
    - image_ids (block):
        - image_digest (optional)
        - image_tag (optional)
EOT

  type = map(object({
    repository_name = string
    region          = optional(string)
    registry_id     = optional(string)
    image_ids = optional(list(object({
      image_digest = optional(string)
      image_tag    = optional(string)
    })))
  }))
}

