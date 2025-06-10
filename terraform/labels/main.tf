# Copyright 2025 Canonical Ltd.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

provider "github" {
  owner = "charmed-hpc"
}

data "github_issue_labels" "existing-labels" {
  for_each   = var.repository
  repository = each.value
}

locals {
  existing-labels = {
    for repo in data.github_issue_labels.existing-labels :
    repo.repository => [
      for label in repo.labels : label.name
    ]
  }
}

resource "github_issue_labels" "charmed-hpc-project-labels" {
  for_each   = var.repository
  repository = each.value

  dynamic "label" {
    for_each = [
      for label in var.label :
      label if contains(local.existing-labels[each.key], label.name) != true
    ]
    content {
      name        = label.value["name"]
      color       = label.value["color"]
      description = label.value["description"]
    }
  }
}
