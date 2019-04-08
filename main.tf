data "null_data_source" "tags_as_list_of_maps" {
  count = "${length(keys(var.tags))}"

  inputs = "${map(
    "key", "${element(keys(var.tags), count.index)}",
    "value", "${element(values(var.tags), count.index)}",
    "propagate_at_launch", true
  )}"
}

data "null_data_source" "additional_tags_as_list_of_maps" {
  count = "${length(keys(var.additional_tags))}"

  inputs = "${map(
    "key", "${element(keys(var.additional_tags), count.index)}",
    "value", "${element(values(var.additional_tags), count.index)}",
    "propagate_at_launch", true
  )}"
}
