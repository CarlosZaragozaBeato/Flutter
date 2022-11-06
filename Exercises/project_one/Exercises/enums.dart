enum MenuItem {
  PROFILE,
  SETTINGS,
}

void main() {
  const item = MenuItem.PROFILE;

  switch (item) {
    case MenuItem.PROFILE:
      print("Open profile page");
      break;
    case MenuItem.SETTINGS:
      print("Open settings page");
      break;
    default:
      print("Invalid Option");
  }
}
