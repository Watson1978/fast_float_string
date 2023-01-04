#include "ruby.h"
#include "fpconv.h"

VALUE float_to_string(VALUE self, VALUE flo)
{
    char buf[50] = { 0 };
    double value = NUM2DBL(flo);

    int length = fpconv_dtoa(value, buf);

    return rb_str_new(buf, length);
}

void Init_fast_float_string(void)
{
    VALUE rb_mFastFloatString = rb_define_module("FastFloatString");
    rb_define_module_function(rb_mFastFloatString, "convert", float_to_string, 1);
}

