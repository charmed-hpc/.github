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

resource "github_issue_labels" "charmed-hpc-project-repos" {
  for_each   = var.repository
  repository = each.value

  dynamic "label" {
    for_each = var.label
    content {
      name        = label.value["name"]
      color       = label.value["color"]
      description = label.value["description"]
    }
  }
}
