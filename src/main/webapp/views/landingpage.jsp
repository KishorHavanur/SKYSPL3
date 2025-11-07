<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>SKYSPL | Connect for Change</title>
<!-- Bootstrap + SweetAlert -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<style>
body {
 background-color: #f9fbfd;
 font-family: 'Segoe UI', sans-serif;
}
.navbar {
 background: linear-gradient(90deg, #1e88e5, #42a5f5);
}
.navbar-brand {
 font-weight: 700;
 color: white !important;
 font-size: 1.5rem;
}
.nav-link {
 color: white !important;
 margin-right: 1rem;
}
.nav-link:hover {
 text-decoration: underline;
}
.hero-section {
 background: url('https://media.istockphoto.com/id/638897808/photo/mercy-two-hands-silhouette-help-concept.jpg?s=612x612&w=0&k=20&c=Dl-bYm0s8wxxW7lCXHLBl61fpmJC2cIOQ-k1JVjQQDQ=') center/cover no-repeat;
 color: white;
 text-align: center;
 padding: 120px 20px;
}
.hero-section h1 {
 font-size: 3rem;
 font-weight: bold;
}
.hero-section p {
 font-size: 1.2rem;
 max-width: 700px;
 margin: auto;
}
.btn-join {
 background-color: #ffca28;
 color: #000;
 font-weight: 600;
}
.opportunity-section {
 padding: 60px 0;
}
.card img {
 height: 200px;
 object-fit: cover;
}
.card {
 border: none;
 box-shadow: 0 4px 15px rgba(0,0,0,0.1);
 border-radius: 15px;
}
.card-title {
 color: #1e88e5;
 font-weight: 600;
}
footer {
 background: #1e88e5;
 color: white;
 text-align: center;
 padding: 20px 0;
}
#otpInput {
 letter-spacing: 5px;
 font-size: 1.3rem;
 text-align: center;
 font-weight: bold;
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
<!-- ======================= NAVBAR ======================= -->
<nav class="navbar navbar-expand-lg navbar-dark">
 <div class="container">
   <a class="navbar-brand" href="#">SKYSPL</a>
   <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navmenu">
     <span class="navbar-toggler-icon"></span>
   </button>
   <div class="collapse navbar-collapse" id="navmenu">
     <ul class="navbar-nav ms-auto">
       <li class="nav-item"><a href="#ngos" class="nav-link">NGOs</a></li>
       <li class="nav-item"><a href="#projects" class="nav-link">Projects</a></li>
       <li class="nav-item"><a href="#about" class="nav-link">About Us</a></li>
       <li class="nav-item">
         <button class="btn btn-outline-light me-2" data-bs-toggle="modal" data-bs-target="#loginTypeModal">Login</button>
         <button class="btn btn-join" data-bs-toggle="modal" data-bs-target="#accountTypeModal">Register</button>
       </li>
     </ul>
   </div>
 </div>
</nav>
<!-- ======================= HERO SECTION ======================= -->
<section class="hero-section">
 <div class="container">
   <h1>Connecting Users & NGOs for a Better Tomorrow</h1>
   <p>Join SKYSPL today and become part of a growing network empowering change across communities.</p>
   <button class="btn btn-light btn-lg mt-3" data-bs-toggle="modal" data-bs-target="#accountTypeModal">Get Started</button>
 </div>
</section>
<!-- ======================= OPPORTUNITY SECTION ======================= -->
<section class="opportunity-section" id="projects">
 <div class="container">
   <h2 class="text-center mb-5 text-primary fw-bold">Opportunities to help</h2>
   <div class="row g-4">
     <div class="col-md-4">
       <div class="card">
         <img src="https://images.unsplash.com/photo-1753892208880-7032f44ad6ea?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=1170" class="card-img-top">
         <div class="card-body text-center">
           <h5 class="card-title">Teach Underprivileged Kids</h5>
           <p class="card-text">Spend your weekends helping children learn basic subjects and life skills.</p>
           <a href="/opportunity-details?id=1" class="btn btn-primary">View & Apply</a>
         </div>
       </div>
     </div>
     <div class="col-md-4">
       <div class="card">
         <img src="https://images.unsplash.com/photo-1509099836639-18ba1795216d?auto=format&fit=crop&w=800&q=80" class="card-img-top">
         <div class="card-body text-center">
           <h5 class="card-title">Tree Plantation Drive</h5>
           <p class="card-text">Join us in making the city greener and cleaner by planting trees in local parks.</p>
           <a href="/opportunity-details?id=2" class="btn btn-primary">View & Apply</a>
         </div>
       </div>
     </div>
     <div class="col-md-4">
       <div class="card">
         <img src="https://images.unsplash.com/photo-1609139010253-40ad2ad5216d?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=1171" class="card-img-top">
         <div class="card-body text-center">
           <h5 class="card-title">Food Distribution</h5>
           <p class="card-text">Be part of our initiative to provide meals to the homeless every weekend.</p>
           <a href="/opportunity-details?id=3" class="btn btn-primary">View & Apply</a>
         </div>
       </div>
     </div>
   </div>
 </div>
</section>
<!-- ======================= FOOTER ======================= -->
<footer>
 <p>© 2025 SKYSPL | Empowering NGOs & Volunteers</p>
</footer>
<!-- ======================================================== -->
<!-- ALL MODALS AND JS MERGED FROM YOUR CODE -->
<!-- ======================================================== -->
<!-- (Same modal content from your earlier code block) -->
<!-- Account Type Modal -->
<div class="modal fade" id="accountTypeModal" tabindex="-1">
 <div class="modal-dialog modal-dialog-centered">
   <div class="modal-content">
     <div class="modal-header bg-info text-white">
       <h5 class="modal-title">Join our community of changemakers</h5>
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
<!-- LOGIN TYPE MODAL -->
<div class="modal fade" id="loginTypeModal" tabindex="-1">
 <div class="modal-dialog modal-dialog-centered">
   <div class="modal-content">
     <div class="modal-header bg-primary text-white">
       <h5 class="modal-title">Login as</h5>
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
<!-- USER REGISTER MODAL -->
<div class="modal fade" id="userRegisterModal" tabindex="-1">
 <div class="modal-dialog modal-dialog-centered">
   <div class="modal-content">
     <div class="modal-header bg-success text-white">
       <h5 class="modal-title">User Registration</h5>
       <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"></button>
     </div>
     <div class="modal-body">
       <form id="userRegisterForm">
         <div id="registerFields">
           <div class="mb-3"><label>Full Name</label>
             <input type="text" name="name" class="form-control" required placeholder="Enter full name"></div>
           <div class="mb-3"><label>Email</label>
             <input type="email" name="email" class="form-control" required placeholder="Enter email"></div>
           <div class="mb-3"><label>Password</label>
             <input type="password" name="password" class="form-control" required placeholder="Create password"></div>
           <div class="mb-3"><label>Phone</label>
             <input type="text" name="phone" class="form-control" placeholder="Enter phone number"></div>
           <div class="mb-3"><label>Address</label>
             <input type="text" name="address" class="form-control" placeholder="Enter address"></div>
           <div class="d-grid"><button type="submit" class="btn btn-success">Send OTP</button></div>
         </div>
         <div id="otpSection" style="display:none;">
           <div class="mb-3 mt-3"><label>Enter OTP</label>
             <input type="text" id="otpInput" class="form-control" placeholder="Enter OTP sent to your email"></div>
           <div class="d-grid"><button type="button" id="verifyOtpBtn" class="btn btn-primary">Verify OTP</button></div>
         </div>
       </form>
     </div>
   </div>
 </div>
</div>
<!-- NGO REGISTER MODAL -->
<div class="modal fade" id="ngoRegisterModal" tabindex="-1">
 <div class="modal-dialog modal-dialog-centered">
   <div class="modal-content">
     <div class="modal-header bg-success text-white">
       <h5 class="modal-title">NGO Registration</h5>
       <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"></button>
     </div>
     <div class="modal-body">
       <form id="ngoRegisterForm">
         <div class="mb-3"><label>NGO Name</label>
           <input type="text" name="ngoName" class="form-control" required placeholder="Enter NGO name"></div>
         <div class="mb-3"><label>Email</label>
           <input type="email" name="email" class="form-control" required placeholder="Enter NGO email"></div>
         <div class="mb-3"><label>Password</label>
           <input type="password" name="password" class="form-control" required placeholder="Create password"></div>
         <div class="mb-3"><label>Contact Number</label>
           <input type="text" name="contact" class="form-control" placeholder="Enter contact number"></div>
         <div class="mb-3"><label>NGO Description</label>
           <textarea name="description" class="form-control" rows="3" placeholder="About your NGO"></textarea></div>
         <div class="d-grid"><button type="submit" class="btn btn-success">Register NGO</button></div>
       </form>
     </div>
   </div>
 </div>
</div>
<!-- LOGIN MODALS -->
<div class="modal fade" id="userLoginModal" tabindex="-1">
 <div class="modal-dialog modal-dialog-centered">
   <div class="modal-content">
     <div class="modal-header bg-primary text-white">
       <h5 class="modal-title">User Login</h5>
       <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"></button>
     </div>
     <div class="modal-body">
       <form id="userLoginForm">
         <div class="mb-3"><label>Email</label><input type="email" name="email" class="form-control" required></div>
         <div class="mb-3"><label>Password</label><input type="password" name="password" class="form-control" required></div>
         <div class="d-grid"><button type="submit" class="btn btn-primary">Login</button></div>
       </form>
     </div>
   </div>
 </div>
</div>
<div class="modal fade" id="ngoLoginModal" tabindex="-1">
 <div class="modal-dialog modal-dialog-centered">
   <div class="modal-content">
     <div class="modal-header bg-success text-white">
       <h5 class="modal-title">NGO Login</h5>
       <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"></button>
     </div>
     <div class="modal-body">
       <form id="ngoLoginForm">
         <div class="mb-3"><label>Email</label><input type="email" name="email" class="form-control" required></div>
         <div class="mb-3"><label>Password</label><input type="password" name="password" class="form-control" required></div>
         <div class="d-grid"><button type="submit" class="btn btn-success">Login NGO</button></div>
       </form>
     </div>
   </div>
 </div>
</div>
<!-- ======================= JS Section ======================= -->
<script>
// Register modals toggling
document.getElementById("chooseUser").onclick = ()=>{bootstrap.Modal.getInstance(document.getElementById("accountTypeModal")).hide();new bootstrap.Modal(document.getElementById("userRegisterModal")).show();};
document.getElementById("chooseNgo").onclick = ()=>{bootstrap.Modal.getInstance(document.getElementById("accountTypeModal")).hide();new bootstrap.Modal(document.getElementById("ngoRegisterModal")).show();};
document.getElementById("loginUserBtn").onclick = ()=>{bootstrap.Modal.getInstance(document.getElementById("loginTypeModal")).hide();new bootstrap.Modal(document.getElementById("userLoginModal")).show();};
document.getElementById("loginNgoBtn").onclick = ()=>{bootstrap.Modal.getInstance(document.getElementById("loginTypeModal")).hide();new bootstrap.Modal(document.getElementById("ngoLoginModal")).show();};
// OTP send
document.getElementById("userRegisterForm").onsubmit = e=>{
 e.preventDefault();
 const email = e.target.email.value;
 fetch('/user/send-otp',{method:'POST',body:new URLSearchParams({email})})
 .then(r=>r.json()).then(d=>{
   if(d.status==='success'){
     Swal.fire('OTP Sent!','OTP sent to '+email,'success');
     document.getElementById("registerFields").style.display="none";
     document.getElementById("otpSection").style.display="block";
   }else Swal.fire('Error!',d.message,'error');
 });
};
// OTP verify
document.getElementById("verifyOtpBtn").onclick=()=>{
 const otp=document.getElementById("otpInput").value.trim();
 if(!otp)return Swal.fire('Warning!','Please enter OTP.','warning');
 const f=document.getElementById("userRegisterForm");
 const fd=new FormData(f);fd.append("otp",otp);
 const params=new URLSearchParams();for(let[k,v]of fd.entries())params.append(k,v);
 fetch('/user/verify-otp',{method:'POST',headers:{'Content-Type':'application/x-www-form-urlencoded'},body:params})
 .then(r=>r.json()).then(res=>{
   if(res.status==='success'){Swal.fire('Success!',res.message,'success');f.reset();
     document.getElementById("registerFields").style.display="block";document.getElementById("otpSection").style.display="none";
     bootstrap.Modal.getInstance(document.getElementById('userRegisterModal')).hide();}
   else Swal.fire('Error!',res.message,'error');
 });
};
// NGO register
document.getElementById("ngoRegisterForm").onsubmit=e=>{
 e.preventDefault();fetch('/ngo/register',{method:'POST',body:new FormData(e.target)})
 .then(r=>r.json()).then(d=>{Swal.fire({icon:d.status==='success'?'success':'error',title:d.status==='success'?'NGO Registered!':'Error!',text:d.message});
 if(d.status==='success'){e.target.reset();bootstrap.Modal.getInstance(document.getElementById('ngoRegisterModal')).hide();}});
};
// User login
document.getElementById("userLoginForm").onsubmit=e=>{
 e.preventDefault();fetch('/user/login',{method:'POST',body:new FormData(e.target)})
 .then(r=>r.json()).then(d=>{if(d.status==='success'){Swal.fire('Welcome!',d.message,'success').then(()=>{window.location='/user/home';});}
 else Swal.fire('Login Failed!',d.message,'error');});};
// NGO login
document.getElementById("ngoLoginForm").onsubmit=e=>{
 e.preventDefault();fetch('/ngo/login',{method:'POST',body:new FormData(e.target)})
 .then(r=>r.json()).then(d=>{if(d.status==='success'){Swal.fire('Welcome NGO!',d.message,'success').then(()=>{window.location='/ngo/dashboard';});}
 else Swal.fire('Login Failed!',d.message,'error');});};
</script>
</body>
</html>

