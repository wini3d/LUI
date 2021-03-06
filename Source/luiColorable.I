

INLINE void LUIColorable::set_color(const LColor &color) {
  _color = color;
  on_color_changed();
}

INLINE void LUIColorable::set_color(const LVector3 &color) {
  _color.set_x(color.get_x());
  _color.set_y(color.get_y());
  _color.set_z(color.get_z());
  on_color_changed();
}

INLINE void LUIColorable::set_color(float r, float g, float b, float a) {
  _color.set_x(r);
  _color.set_y(g);
  _color.set_z(b);
  _color.set_w(a);
  on_color_changed();
}

INLINE void LUIColorable::set_red(float r) {
  _color.set_x(r);
  on_color_changed();
}

INLINE void LUIColorable::set_green(float g) {
  _color.set_y(g);
  on_color_changed();
}

INLINE void LUIColorable::set_blue(float b) {
  _color.set_z(b);
  on_color_changed();
}

INLINE void LUIColorable::set_alpha(float a) {
  _color.set_w(a);
  on_color_changed();
}

INLINE float LUIColorable::get_red() {
  return _color.get_x();
}

INLINE float LUIColorable::get_green() {
  return _color.get_y();
}

INLINE float LUIColorable::get_blue() {
  return _color.get_z();
}

INLINE float LUIColorable::get_alpha() {
  return _color.get_w();
}

INLINE const LColor &LUIColorable::get_color() {
  return _color;
}

INLINE const LColor &LUIColorable::get_composed_color() {
  return _composed_color;
}

INLINE void LUIColorable::compose_color(const LColor &parent_color) {
  if (lui_cat.is_spam()) {
    lui_cat.spam() << "Composing color with parent color (" << parent_color.get_x() << ", " << parent_color.get_y() << ", " << parent_color.get_z() << ", " << parent_color.get_w() << ")" << endl;
  }

  _composed_color = LColor(
    parent_color.get_x() * _color.get_x(),
    parent_color.get_y() * _color.get_y(),
    parent_color.get_z() * _color.get_z(),
    parent_color.get_w() * _color.get_w()
  );
}