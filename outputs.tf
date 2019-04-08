output "list" {
  value = "${data.null_data_source.additional_tags_as_list_of_maps.*.outputs}"
}
