output "list" {
  value = "${concat(data.null_data_source.tags_as_list_of_maps.*.outputs, data.null_data_source.additional_tags_as_list_of_maps.*.outputs)}"
}
