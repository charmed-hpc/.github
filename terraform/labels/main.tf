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
  repos_labels = [
    for pair in setproduct(var.repository, var.label) : {
      repository        = pair[0]
      label_name        = pair[1].name
      label_color       = pair[1].color
      label_description = pair[1].description
    }
  ]
}

resource "github_issue_label" "charmed-hpc-project-labels" {
  for_each    = local.repos_labels
  repository  = each.value.repository
  name        = each.value.label_name
  color       = each.value.label_color
  description = each.value.label_description
}
