var user_permission = document.getElementById("user_permission_id");
console.log(user_permission.selectedIndex)
var salary_id = document.getElementById("user_salary");
var salary = salary_id.value;
user_permission.addEventListener("change", function() {
  if(user_permission.selectedIndex === 2) {
    document.getElementById("salary_column").classList.remove("d-none");
    salary_id.value = salary;
  }
  else if(user_permission.selectedIndex !== 2) {
    document.getElementById("salary_column").classList.add("d-none");
    document.getElementById("user_salary").reset();
  }
});
