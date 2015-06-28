/**
 * Created by liulei on 15/6/28.
 */
function hiddenAdd_role() {
    $("#add_Role").removeClass();
    $("#roles").hide();
}
/*增加角色  */
function addRole() {
    var role_name = $("#role_name").val();
    var role_level = $("#role_level").val();
    if (role_name == null || role_level == null) {
        alert("角色名称或等级不能为空");
    } else {
        $.post("addRole", {
            role_name: role_name,
            role_level: role_level

        }, function (data) {
            if (data == 0) {
                alert("重复了");
            }
        });
    }
}
function getRoleJSP() {
    $("#tab-role-detail").load("getRoleJSP");
}
function deleteRole(r_id) {
    $.post("deleteRole", {role_id: r_id}, function (data) {
        if (data == 1) {
            getRoleJSP();
        } else {
            alert("删除失败");
        }
    });
}