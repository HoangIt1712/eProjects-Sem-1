function validateName() {
    var name = document.getElementById("customer_name").value;
    var nameError = document.getElementById("nameError");
  
    if (name.trim() === "") {
      nameError.textContent = "Full Name is required.";
      return false;  // Thêm return false nếu không hợp lệ
    } else {
      nameError.textContent = "";  // Xóa thông báo lỗi nếu hợp lệ
      return true;
    }
  }
  
  function validateEmail() {
    var email = document.getElementById("email").value;
    var emailError = document.getElementById("emailError");
  
    if (email.trim() === "") {
      emailError.textContent = "Email is required.";
      return false;
    } else if (email.indexOf("@") === -1) {
      emailError.textContent = "Please enter a valid email address.";
      return false;
    } else {
      emailError.textContent = "";  // Xóa thông báo lỗi nếu hợp lệ
      return true;
    }
  }
  
  function validateAddress() {
    var address = document.getElementById("shipping_address").value;
    var addressError = document.getElementById("addressError");
  
    if (address.trim() === "") {
      addressError.textContent = "Shipping Address is required.";
      return false;
    } else {
      addressError.textContent = "";  // Xóa thông báo lỗi nếu hợp lệ
      return true;
    }
  }
  
  function validateTelephone() {
    var telephone = document.getElementById("telephone").value;
    var telephoneError = document.getElementById("telephoneError");
  
    if (telephone.trim() === "") {
      telephoneError.textContent = "Telephone is required.";
      return false;
    } 
    else if (!/^\d{10}$/.test(telephone)) {
      telephoneError.textContent = "Telephone must be exactly 10 digits.";
      return false;
    } 
    else {
      telephoneError.textContent = "";  // Xóa thông báo lỗi nếu hợp lệ
      return true;
    }
  }
  
  // Hàm kiểm tra tổng thể khi form được gửi
  function validateForm() {
    var isNameValid = validateName();
    var isEmailValid = validateEmail();
    var isAddressValid = validateAddress();
    var isTelephoneValid = validateTelephone();
  
    // Nếu tất cả đều hợp lệ, trả về true để form được gửi
    return isNameValid && isEmailValid && isAddressValid && isTelephoneValid;
  }
  