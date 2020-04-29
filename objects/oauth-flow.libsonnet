// Copyright (c) 2020, Cody Opel <cwopel@chlorm.net>
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

{
  // https://swagger.io/specification/#oauthFlowObject
  new():: {
    authorizationurl(s):: self {
      assert std.isString(s),
      authorizationUrl: s,
    },

    tokenurl(s):: self {
      assert std.isString(s),
      tokenUrl: s,
    },

    refreshurl(s):: self {
      assert std.isString(s),
      refreshUrl: s,
    },

    scope(name, description):: self {
      assert std.isString(name),
      assert std.isString(description),
      scopes+: {
        [name]: description,
      },
    },
  },
}
