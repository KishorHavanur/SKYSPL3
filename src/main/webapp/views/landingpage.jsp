<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Community Portal</title>

<!-- Bootstrap + SweetAlert -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<style>
body {
    background: linear-gradient(135deg, #e3f2fd, #bbdefb);
    min-height: 100vh;
}

#otpInput {
  letter-spacing: 5px;
  font-size: 1.3rem;
  text-align: center;
  font-weight: bold;
}


.card {
    border-radius: 15px;
    box-shadow: 0 4px 10px rgba(0,0,0,0.2);
}
.btn-custom {
    border-radius: 10px;
    font-weight: 500;
    transition: all 0.3s ease;
}
.btn-custom:hover {
    transform: scale(1.05);
}
</style>
</head>

<body>
<div class="container text-center py-5">
    <h1 class="text-primary mb-4">Welcome to the Community Portal</h1>
    <p class="lead mb-4">Join as a User or NGO, or log in to continue.</p>

    <!-- Buttons -->
    <button class="btn btn-success btn-lg me-3 btn-custom" data-bs-toggle="modal" data-bs-target="#accountTypeModal">
        Register
    </button>
    <button class="btn btn-outline-primary btn-lg btn-custom" data-bs-toggle="modal" data-bs-target="#loginTypeModal">
        Login
    </button>
</div>

<!-- ======================================================== -->
<!-- ACCOUNT TYPE SELECTION MODAL (REGISTER) -->
<!-- ======================================================== -->
<div class="modal fade" id="accountTypeModal" tabindex="-1" aria-labelledby="accountTypeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header bg-info text-white">
        <h5 class="modal-title" id="accountTypeModalLabel">Join our community of changemakers</h5>
        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"></button>
      </div>
      <div class="modal-body text-center">
        <p class="mb-4">Select an account type</p>
        <div class="d-flex justify-content-around mb-3">
          <button class="btn btn-outline-primary btn-lg w-50 me-2" id="chooseUser">User</button>
          <button class="btn btn-outline-success btn-lg w-50" id="chooseNgo">NGO</button>
        </div>
        <button class="btn btn-secondary mt-3" data-bs-dismiss="modal">Cancel</button>
      </div>
    </div>
  </div>
</div>

<!-- ======================================================== -->
<!-- LOGIN TYPE SELECTION MODAL -->
<!-- ======================================================== -->
<div class="modal fade" id="loginTypeModal" tabindex="-1" aria-labelledby="loginTypeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header bg-primary text-white">
        <h5 class="modal-title" id="loginTypeModalLabel">Login as</h5>
        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"></button>
      </div>
      <div class="modal-body text-center">
        <p class="mb-4">Select login type</p>
        <div class="d-flex justify-content-around mb-3">
          <button class="btn btn-outline-primary btn-lg w-50 me-2" id="loginUserBtn">User</button>
          <button class="btn btn-outline-success btn-lg w-50" id="loginNgoBtn">NGO</button>
        </div>
        <button class="btn btn-secondary mt-3" data-bs-dismiss="modal">Cancel</button>
      </div>
    </div>
  </div>
</div>
<!-- ======================================================== -->
<!-- USER REGISTER MODAL -->
<!-- ======================================================== -->
<div class="modal fade" id="userRegisterModal" tabindex="-1" aria-labelledby="userRegisterModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header bg-success text-white">
        <h5 class="modal-title" id="userRegisterModalLabel">User Registration</h5>
        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"></button>
      </div>
      <div class="modal-body">
        <form id="userRegisterForm">
          <div id="registerFields">
            <div class="mb-3">
              <label>Full Name</label>
              <input type="text" name="name" class="form-control" required placeholder="Enter full name">
            </div>
            <div class="mb-3">
              <label>Email</label>
              <input type="email" name="email" class="form-control" required placeholder="Enter email">
            </div>
            <div class="mb-3">
              <label>Password</label>
              <input type="password" name="password" class="form-control" required placeholder="Create password">
            </div>
            <div class="mb-3">
              <label>Phone</label>
              <input type="text" name="phone" class="form-control" placeholder="Enter phone number">
            </div>
            <div class="mb-3">
              <label>Address</label>
              <input type="text" name="address" class="form-control" placeholder="Enter address">
            </div>
            <div class="d-grid">
              <button type="submit" class="btn btn-success">Send OTP</button>
            </div>
          </div>

          <!-- Hidden OTP verification section -->
          <div id="otpSection" style="display:none;">
            <div class="mb-3 mt-3">
              <label>Enter OTP</label>
              <input type="text" id="otpInput" class="form-control" placeholder="Enter OTP sent to your email">
            </div>
            <div class="d-grid">
              <button type="button" id="verifyOtpBtn" class="btn btn-primary">Verify OTP</button>
            </div>
          </div>

        </form>
      </div>
    </div>
  </div>
</div>

<!-- ======================================================== -->
<!-- NGO REGISTER MODAL -->
<!-- ======================================================== -->
<div class="modal fade" id="ngoRegisterModal" tabindex="-1" aria-labelledby="ngoRegisterModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header bg-success text-white">
        <h5 class="modal-title" id="ngoRegisterModalLabel">NGO Registration</h5>
        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"></button>
      </div>
      <div class="modal-body">
        <form id="ngoRegisterForm">
          <div class="mb-3">
            <label>NGO Name</label>
            <input type="text" name="ngoName" class="form-control" required placeholder="Enter NGO name">
          </div>
          <div class="mb-3">
            <label>Email</label>
            <input type="email" name="email" class="form-control" required placeholder="Enter NGO email">
          </div>
          <div class="mb-3">
            <label>Password</label>
            <input type="password" name="password" class="form-control" required placeholder="Create password">
          </div>
          <div class="mb-3">
            <label>Contact Number</label>
            <input type="text" name="contact" class="form-control" placeholder="Enter contact number">
          </div>
          <div class="mb-3">
            <label>NGO Description</label>
            <textarea name="description" class="form-control" rows="3" placeholder="About your NGO"></textarea>
          </div>
          <div class="d-grid">
            <button type="submit" class="btn btn-success">Register NGO</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

<!-- ======================================================== -->
<!-- USER LOGIN MODAL -->
<!-- ======================================================== -->
<div class="modal fade" id="userLoginModal" tabindex="-1" aria-labelledby="userLoginModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header bg-primary text-white">
        <h5 class="modal-title" id="userLoginModalLabel">User Login</h5>
        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"></button>
      </div>
      <div class="modal-body">
        <form id="userLoginForm">
          <div class="mb-3">
            <label>Email</label>
            <input type="email" name="email" class="form-control" required placeholder="Enter user email">
          </div>
          <div class="mb-3">
            <label>Password</label>
            <input type="password" name="password" class="form-control" required placeholder="Enter password">
          </div>
          <div class="d-grid">
            <button type="submit" class="btn btn-primary">Login</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

<!-- ======================================================== -->
<!-- NGO LOGIN MODAL -->
<!-- ======================================================== -->
<div class="modal fade" id="ngoLoginModal" tabindex="-1" aria-labelledby="ngoLoginModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header bg-success text-white">
        <h5 class="modal-title" id="ngoLoginModalLabel">NGO Login</h5>
        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"></button>
      </div>
      <div class="modal-body">
        <form id="ngoLoginForm">
          <div class="mb-3">
            <label>Email</label>
            <input type="email" name="email" class="form-control" required placeholder="Enter NGO email">
          </div>
          <div class="mb-3">
            <label>Password</label>
            <input type="password" name="password" class="form-control" required placeholder="Enter password">
          </div>
          <div class="d-grid">
            <button type="submit" class="btn btn-success">Login NGO</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

<!-- ======================================================== -->
<!-- JAVASCRIPT SECTION -->
<!-- ======================================================== -->
<script>
// Show correct modal when choosing register type
document.getElementById("chooseUser").addEventListener("click", () => {
    bootstrap.Modal.getInstance(document.getElementById("accountTypeModal")).hide();
    new bootstrap.Modal(document.getElementById("userRegisterModal")).show();
});
document.getElementById("chooseNgo").addEventListener("click", () => {
    bootstrap.Modal.getInstance(document.getElementById("accountTypeModal")).hide();
    new bootstrap.Modal(document.getElementById("ngoRegisterModal")).show();
});

// Show correct modal when choosing login type
document.getElementById("loginUserBtn").addEventListener("click", () => {
    bootstrap.Modal.getInstance(document.getElementById("loginTypeModal")).hide();
    new bootstrap.Modal(document.getElementById("userLoginModal")).show();
});
document.getElementById("loginNgoBtn").addEventListener("click", () => {
    bootstrap.Modal.getInstance(document.getElementById("loginTypeModal")).hide();
    new bootstrap.Modal(document.getElementById("ngoLoginModal")).show();
});
/* ========== USER REGISTER WITH OTP (NEW) ========== */
document.getElementById("userRegisterForm").addEventListener("submit", function(e) {
    e.preventDefault();
    const formData = new FormData(this);
    const email = formData.get("email");

    // Step 1: Send OTP
    fetch('/user/send-otp', { method: 'POST', body: new URLSearchParams({ email }) })
    .then(res => res.json())
    .then(data => {
        if (data.status === 'success') {
            Swal.fire('OTP Sent!', 'An OTP has been sent to ' + email, 'success');
            
            // Hide registration fields, show OTP section
            document.getElementById("registerFields").style.display = "none";
            document.getElementById("otpSection").style.display = "block";
        } else {
            Swal.fire('Error!', data.message, 'error');
        }
    });
});

//Step 2: Verify OTP + Save User
document.getElementById("verifyOtpBtn").addEventListener("click", function() {
    const otp = document.getElementById("otpInput").value.trim();
    if (!otp) {
        Swal.fire('Warning!', 'Please enter your OTP.', 'warning');
        return;
    }

    // Collect all form data from registration form
    const form = document.getElementById("userRegisterForm");
    const formData = new FormData(form);
    formData.append("otp", otp);

    // Convert FormData to URLSearchParams for POST body
    const params = new URLSearchParams();
    for (let [key, value] of formData.entries()) {
        params.append(key, value);
    }

    // Send full data to backend
    fetch('/user/verify-otp', {
        method: 'POST',
        headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
        body: params
    })
    .then(res => res.json())
    .then(result => {
        if (result.status === 'success') {
            Swal.fire('Success!', result.message, 'success');
            form.reset();
            document.getElementById("registerFields").style.display = "block";
            document.getElementById("otpSection").style.display = "none";
            bootstrap.Modal.getInstance(document.getElementById('userRegisterModal')).hide();
        } else {
            Swal.fire('Error!', result.message, 'error');
        }
    })
    .catch(() => Swal.fire('Error!', 'Server error during registration.', 'error'));
});


/* ========== NGO REGISTER ========== */
document.getElementById("ngoRegisterForm").addEventListener("submit", function(e) {
    e.preventDefault();
    const formData = new FormData(this);
    fetch('/ngo/register', { method: 'POST', body: formData })
    .then(res => res.json())
    .then(data => {
        Swal.fire({
            icon: data.status === 'success' ? 'success' : 'error',
            title: data.status === 'success' ? 'NGO Registered!' : 'Error!',
            text: data.message,
        });
        if (data.status === 'success') {
            this.reset();
            bootstrap.Modal.getInstance(document.getElementById('ngoRegisterModal')).hide();
        }
    });
});

/* ========== USER LOGIN ========== */
document.getElementById("userLoginForm").addEventListener("submit", function(e) {
    e.preventDefault();
    const formData = new FormData(this);
    fetch('/user/login', { method: 'POST', body: formData })
    .then(res => res.json())
    .then(data => {
        if (data.status === 'success') {
            Swal.fire({ icon: 'success', title: 'Welcome!', text: data.message })
            .then(() => { window.location.href = '/user/home'; });
        } else {
            Swal.fire({ icon: 'error', title: 'Login Failed!', text: data.message });
        }
    });
});

/* ========== NGO LOGIN ========== */
document.getElementById("ngoLoginForm").addEventListener("submit", function(e) {
    e.preventDefault();
    const formData = new FormData(this);
    fetch('/ngo/login', { method: 'POST', body: formData })
    .then(res => res.json())
    .then(data => {
        if (data.status === 'success') {
            Swal.fire({ icon: 'success', title: 'Welcome!', text: data.message })
            .then(() => { window.location.href = '/user/home'; });
        } else {
            Swal.fire({ icon: 'error', title: 'Login Failed!', text: data.message });
        }
    });
});
</script>
</body>
</html>
