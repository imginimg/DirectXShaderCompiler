// RUN: %dxc -T lib_6_1 %s | FileCheck %s

// CHECK-DAG: define float @"\01?lib2_fn@@YAMXZ"()
// CHECK-DAG: declare float @"\01?external_fn@@YAMXZ"()
// CHECK-DAG: declare float @"\01?external_fn2@@YAMXZ"()
// CHECK-DAG: define float @"\01?call_lib1@@YAMXZ"()
// CHECK-DAG: declare float @"\01?lib1_fn@@YAMXZ"()
// CHECK-NOT: @"\01?unused_fn2

float external_fn();
float external_fn2();
float lib1_fn();
float unused_fn2();

float lib2_fn() {
  if (false)
    return unused_fn2();
  return 22.0 * external_fn() * external_fn2();
}

float call_lib1() {
  return lib1_fn();
}