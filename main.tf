data "null_data_source" "tags_as_list_of_maps" {
  count = "${length(keys(var.tags))}"

  inputs = "${merge(map(
    "key", "${element(keys(var.tags), count.index)}",
    "value", "${element(values(var.tags), count.index)}"
  ),
  data.null_data_source.additional_tags_as_list_of_maps.*.outputs)}"
}

data "null_data_source" "additional_tags_as_list_of_maps" {
  count = "${length(keys(var.additional_tags))}"

  inputs = "${map(
    "key", "${element(keys(var.additional_tags), count.index)}",
    "value", "${element(values(var.additional_tags), count.index)}"
  )}"
}