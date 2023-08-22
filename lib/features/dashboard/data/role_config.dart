class RoleConfig {
  final String role;
  final List<int> allowedMenu;

  factory RoleConfig.role1() {
    return RoleConfig('Role 1', [1,3,5,7,9]);
  }

  factory RoleConfig.role2() {
    return RoleConfig('Role 2', [2,4,6,8,10]);
  }

  RoleConfig(this.role, this.allowedMenu);
}
