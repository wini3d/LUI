
#include "luiAtlasDescriptor.h"


int LUIAtlasDescriptor::_instance_count = 0;

LUIAtlasDescriptor::LUIAtlasDescriptor() {
  _instance_count ++;

  if (lui_cat.is_spam()) {
    lui_cat.spam() << "Constructed a new atlas descriptor (active: " << _instance_count << ")" << endl;
  }
}

LUIAtlasDescriptor::~LUIAtlasDescriptor() {
  _instance_count --;

  if (lui_cat.is_spam()) {
    lui_cat.spam() << "Destructed an atlas descriptor (left: " << _instance_count << ")" << endl;
  }
}

