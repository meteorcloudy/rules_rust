# Copyright 2019 The Bazel Authors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# buildifier: disable=module-docstring
load("//wasm_bindgen/raze:crates.bzl", "rules_rust_wasm_bindgen_fetch_remote_crates")

# buildifier: disable=unnamed-macro
def rust_wasm_bindgen_repositories():
    """Declare dependencies needed for wasm-bindgen.

    This macro will load crate dependencies of `wasm-bindgen` that are generated using [cargo raze][raze] inside the rules_rust \
    repository. This makes the default toolchain `@io_bazel_rules_rust//wasm_bindgen:default_wasm_bindgen_toolchain` available. For \
    more information on `wasm_bindgen` toolchains, see [rust_wasm_bindgen_toolchain](#rust_wasm_bindgen_toolchain).
    """

    rules_rust_wasm_bindgen_fetch_remote_crates()

    native.register_toolchains(str(Label("//wasm_bindgen:default_wasm_bindgen_toolchain")))
