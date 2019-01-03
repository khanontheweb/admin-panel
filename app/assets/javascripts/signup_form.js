var user_permission = document.getElementById("user_permission_id");
console.log(user_permission.selectedIndex)
user_permission.addEventListener("change", function() {
  if(user_permission.selectedIndex === 1)
    document.getElementById("salary_column").classList.toggle("d-none");
  else if(user_permission.selectedIndex !== 1)
    document.getElementById("salary_column").classList.toggle("d-none");
});
