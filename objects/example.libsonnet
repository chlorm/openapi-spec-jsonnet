# Copyright (c) 2020, Cody Opel <cwopel@chlorm.net>
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

{
  // https://swagger.io/specification/#exampleObject
  new():: {
    summary(s):: self {
      assert std.isString(s),
      summary: s,
    },

    deescription(s):: self {
      assert std.isString(s),
      description: s,
    },

    value(any):: self {
      assert: std.type(any) != 'null',
      value: any,
    },

    externalValue(s):: self {
      assert std.isString(s),
      externalValue: s,
    },
  },
}