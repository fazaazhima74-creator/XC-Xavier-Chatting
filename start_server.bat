<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aplikasi Media Sosial Modern - Dark Mode</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
    <style>
        /* CSS Utama */
        :root {
            /* Dark Mode Variables */
            --dark-bg: #1a1a2e; /* Ungu gelap kebiruan */
            --dark-card: rgba(43, 43, 67, 0.7); /* Transparan gelap */
            --accent-purple: #927dfc; /* Ungu aksen */
            --text-light: #e0e0e0;
            --border-color: rgba(146, 125, 252, 0.3);

            /* Default Theme is Dark */
            --bg-color: var(--dark-bg);
            --card-color: var(--dark-card);
            --text-color: var(--text-light);
            --input-bg: rgba(0, 0, 0, 0.3);
        }

        /* Light Mode Overrides */
        .light-mode {
            --bg-color: #f0f0f5; /* Putih keabu-abuan */
            --card-color: rgba(255, 255, 255, 0.9); /* Putih transparan */
            --accent-purple: #5b3ce0; /* Ungu aksen yang lebih gelap */
            --text-color: #1a1a2e;
            --border-color: rgba(91, 60, 224, 0.2);
            --input-bg: rgba(255, 255, 255, 0.7);
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
        }

        body {
            background-color: var(--bg-color);
            color: var(--text-color);
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            transition: background-color 0.3s, color 0.3s;
        }

        /* --- HALAMAN AWAL BARU --- */
        .welcome-container {
            width: 90%;
            max-width: 500px;
            background: var(--card-color);
            border-radius: 20px;
            padding: 40px 30px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.3);
            -webkit-backdrop-filter: blur(15px);
            backdrop-filter: blur(15px);
            border: 1px solid var(--border-color);
            text-align: center;
        }

        .app-logo-large {
            font-size: 48px;
            font-weight: 700;
            color: var(--accent-purple);
            margin-bottom: 20px;
        }

        .app-slogan {
            font-size: 18px;
            margin-bottom: 40px;
            color: var(--text-color);
            opacity: 0.8;
        }

        .welcome-buttons {
            display: flex;
            flex-direction: column;
            gap: 20px;
            margin-top: 30px;
        }

        .welcome-btn {
            padding: 18px;
            border-radius: 12px;
            font-size: 18px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            border: none;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 12px;
        }

        .register-btn {
            background-color: var(--accent-purple);
            color: white;
        }

        .register-btn:hover {
            background-color: #7a68e0;
            transform: translateY(-3px);
            box-shadow: 0 10px 20px rgba(146, 125, 252, 0.3);
        }

        .login-btn {
            background-color: rgba(146, 125, 252, 0.2);
            color: var(--accent-purple);
            border: 2px solid var(--accent-purple);
        }

        .login-btn:hover {
            background-color: rgba(146, 125, 252, 0.3);
            transform: translateY(-3px);
            box-shadow: 0 10px 20px rgba(146, 125, 252, 0.2);
        }

        .btn-icon {
            font-size: 24px;
        }

        /* --- Tampilan Pendaftaran/Login/Setup --- */

        .auth-container {
            width: 90%;
            max-width: 400px;
            background: var(--card-color);
            border-radius: 15px;
            padding: 30px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
            -webkit-backdrop-filter: blur(10px);
            backdrop-filter: blur(10px);
            border: 1px solid var(--border-color);
        }

        .auth-container h2 {
            text-align: center;
            color: var(--accent-purple);
            margin-bottom: 20px;
            font-weight: 600;
        }

        .input-group {
            margin-bottom: 15px;
        }

        .input-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: 300;
        }

        .input-group input, .input-group button, .input-group textarea, .input-group select {
            width: 100%;
            padding: 12px;
            border: 1px solid var(--border-color);
            border-radius: 8px;
            background: var(--input-bg);
            color: var(--text-color);
            font-size: 16px;
            transition: border-color 0.3s, background-color 0.3s, color 0.3s;
        }

        .input-group input:focus, .input-group textarea:focus, .input-group select:focus {
            outline: none;
            border-color: var(--accent-purple);
        }

        .input-group button {
            background-color: var(--accent-purple);
            border: none;
            color: white;
            cursor: pointer;
            font-weight: 600;
            margin-top: 10px;
            transition: background-color 0.3s;
        }

        .input-group button:hover {
            background-color: #7a68e0;
        }

        .link-group {
            text-align: center;
            margin-top: 20px;
        }

        .link-group a {
            color: var(--accent-purple);
            text-decoration: none;
            font-size: 14px;
            transition: color 0.3s;
        }

        .link-group a:hover {
            color: var(--text-color);
        }
        
        /* Gaya Khusus Setup Profil */
        .profile-setup {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 20px;
        }
        
        .profile-placeholder {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            background: rgba(146, 125, 252, 0.2);
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 14px; /* Dikecilkan */
            color: var(--accent-purple);
            border: 2px dashed var(--accent-purple);
            cursor: pointer;
            overflow: hidden;
            text-align: center;
            line-height: 1.2;
            padding: 5px;
        }
        
        .profile-placeholder img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        /* CSS Beranda lainnya */
        .home-container {
            display: grid;
            width: 100%;
            max-width: 1200px;
            min-height: 100vh;
            grid-template-columns: 250px 1fr 280px;
            grid-template-areas:
                "header header header"
                "sidebar-left main-content sidebar-right"
                "bottom-nav bottom-nav bottom-nav";
            gap: 20px;
            padding: 20px;
        }
        .sidebar-left { grid-area: sidebar-left; }
        .main-content { grid-area: main-content; }
        .sidebar-right { grid-area: sidebar-right; }
        .bottom-nav { grid-area: bottom-nav; }

        .sidebar-left, .main-content, .sidebar-right {
            padding: 20px;
            border-radius: 15px;
            background: var(--card-color);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            -webkit-backdrop-filter: blur(5px);
            backdrop-filter: blur(5px);
            border: 1px solid var(--border-color);
        }
        
        .header {
            grid-area: header;
            background: rgba(26, 26, 46, 0.9);
            padding: 10px 30px;
            border-radius: 15px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: sticky;
            top: 20px;
            z-index: 10;
        }

        /* BARU: Gaya Info Profil di Header */
        .header-profile-info {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-right: auto; /* Dorong elemen lain ke kanan */
            margin-left: 0;
            width: auto; /* Hilangkan width 150px yang lama */
        }
        .header-profile-info .profile-pic {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            object-fit: cover;
            border: 2px solid var(--accent-purple);
            cursor: pointer;
        }
        .header-profile-info .username {
            font-weight: 600;
            font-size: 16px;
            color: var(--text-color);
        }
        .header-profile-info .app-logo {
            color: var(--accent-purple);
            font-size: 20px;
            font-weight: 700;
            margin-right: 20px;
        }

        /* PERUBAHAN: Profil di Sidebar - Horizontal */
        .user-profile {
            display: flex; /* Ubah menjadi flex horizontal */
            align-items: center;
            text-align: left;
            margin-bottom: 30px;
            gap: 15px; /* Jarak antara foto dan nama */
        }
        .profile-pic {
            width: 60px; /* Sedikit lebih kecil untuk layout horizontal */
            height: 60px;
            border-radius: 50%;
            object-fit: cover;
            border: 3px solid var(--accent-purple);
            flex-shrink: 0; /* Pastikan foto tidak mengecil */
        }
        
        .profile-name-display {
            text-align: left;
            margin-top: 0; /* Hapus margin atas karena sekarang sejajar */
        }
        .profile-name-display .name {
            font-size: 16px; /* Sedikit lebih besar untuk keterbacaan */
            font-weight: 600;
            color: var(--text-color);
            margin-bottom: 4px;
        }
        .profile-name-display .status {
            font-size: 12px;
            color: var(--accent-purple);
        }

        /* Light Mode Header */
        .light-mode .header {
            background: rgba(255, 255, 255, 0.9);
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        
        .search-bar {
            flex-grow: 1;
            max-width: 600px;
            margin: 0 20px;
        }
        .search-bar input {
            width: 100%;
            padding: 10px 15px;
            border: 1px solid var(--border-color);
            border-radius: 20px;
            background: var(--input-bg);
            color: var(--text-color);
            cursor: pointer;
        }
        .header .menu-wrapper {
            position: relative;
        }
        .header .menu-icon {
            color: var(--accent-purple);
            font-size: 24px;
            cursor: pointer;
        }

        /* Dropdown Menu (BARU) */
        .dropdown-menu {
            position: absolute;
            top: 100%; /* Di bawah header */
            right: 0;
            width: 250px;
            background: var(--card-color);
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
            border: 1px solid var(--border-color);
            padding: 10px 0;
            z-index: 20;
            opacity: 0;
            visibility: hidden;
            transform: translateY(10px);
            transition: opacity 0.3s, transform 0.3s, visibility 0.3s;
        }
        /* Tampilkan saat di-hover pada wrapper */
        .menu-wrapper:hover .dropdown-menu,
        .dropdown-menu.active {
            opacity: 1;
            visibility: visible;
            transform: translateY(0);
        }

        .dropdown-menu-item {
            padding: 12px 20px;
            cursor: pointer;
            transition: background-color 0.2s;
            display: flex;
            flex-direction: column;
        }
        .dropdown-menu-item:hover {
            background: rgba(146, 125, 252, 0.15);
        }
        .dropdown-menu-item p {
            font-size: 12px;
            color: #a0a0a0;
        }
        
        /* Toggle Switch (BARU) */
        .theme-toggle-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 12px 20px;
            border-top: 1px solid var(--border-color);
            margin-top: 5px;
        }
        .switch {
          position: relative;
          display: inline-block;
          width: 40px;
          height: 24px;
        }
        .switch input {
          opacity: 0;
          width: 0;
          height: 0;
        }
        .slider {
          position: absolute;
          cursor: pointer;
          top: 0;
          left: 0;
          right: 0;
          bottom: 0;
          background-color: #ccc;
          transition: .4s;
          border-radius: 24px;
        }
        .slider:before {
          position: absolute;
          content: "";
          height: 16px;
          width: 16px;
          left: 4px;
          bottom: 4px;
          background-color: white;
          transition: .4s;
          border-radius: 50%;
        }
        input:checked + .slider {
          background-color: var(--accent-purple);
        }
        input:checked + .slider:before {
          transform: translateX(16px);
        }

        /* PERUBAHAN: Gaya untuk Fitur Tambah Teman */
        .add-friend-section {
            margin-top: 20px;
        }
        
        .add-friend-btn {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            width: 100%;
            padding: 12px;
            background: rgba(146, 125, 252, 0.2);
            border: 2px dashed var(--accent-purple);
            border-radius: 10px;
            color: var(--accent-purple);
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            margin-bottom: 15px;
        }
        
        .add-friend-btn:hover {
            background: rgba(146, 125, 252, 0.3);
            transform: translateY(-2px);
        }
        
        .add-friend-btn .icon {
            font-size: 20px;
            font-weight: bold;
        }
        
        .search-friend-container {
            display: none;
            margin-top: 15px;
        }
        
        .search-friend-input {
            width: 100%;
            padding: 10px 15px;
            border: 1px solid var(--border-color);
            border-radius: 20px;
            background: var(--input-bg);
            color: var(--text-color);
            margin-bottom: 15px;
        }
        
        .search-results {
            max-height: 200px;
            overflow-y: auto;
        }
        
        .friend-result-item {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 10px;
            border-radius: 8px;
            margin-bottom: 8px;
            background: rgba(255, 255, 255, 0.05);
            transition: background-color 0.2s;
        }
        
        .friend-result-item:hover {
            background: rgba(146, 125, 252, 0.1);
        }
        
        .friend-info {
            display: flex;
            align-items: center;
            gap: 10px;
        }
        
        .friend-avatar {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            object-fit: cover;
            border: 2px solid var(--accent-purple);
        }
        
        .friend-details {
            display: flex;
            flex-direction: column;
        }
        
        .friend-name {
            font-weight: 600;
            font-size: 14px;
        }
        
        .friend-username {
            font-size: 12px;
            color: #a0a0a0;
        }
        
        .add-friend-icon {
            width: 30px;
            height: 30px;
            border-radius: 50%;
            background: var(--accent-purple);
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        
        .add-friend-icon:hover {
            background: #7a68e0;
        }

        /* PERUBAHAN: Halaman Profil dan Setting */
        .profile-page, .settings-page {
            width: 90%;
            max-width: 500px;
            background: var(--card-color);
            border-radius: 15px;
            padding: 30px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
            -webkit-backdrop-filter: blur(10px);
            backdrop-filter: blur(10px);
            border: 1px solid var(--border-color);
        }

        .page-header {
            display: flex;
            align-items: center;
            margin-bottom: 30px;
            gap: 15px;
        }

        .back-btn {
            background: none;
            border: none;
            color: var(--accent-purple);
            font-size: 24px;
            cursor: pointer;
            padding: 5px;
        }

        .page-title {
            font-size: 24px;
            font-weight: 600;
            color: var(--accent-purple);
        }

        .profile-display {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 20px;
            margin-bottom: 30px;
        }

        .profile-display .profile-pic {
            width: 120px;
            height: 120px;
        }

        .info-group {
            margin-bottom: 20px;
            padding: 15px;
            background: rgba(255, 255, 255, 0.05);
            border-radius: 10px;
        }

        .info-label {
            font-size: 12px;
            color: #a0a0a0;
            margin-bottom: 5px;
        }

        .info-value {
            font-size: 16px;
            font-weight: 500;
        }

        .sensitive-info {
            color: #a0a0a0;
            letter-spacing: 2px;
        }

        .settings-option {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px;
            background: rgba(255, 255, 255, 0.05);
            border-radius: 10px;
            margin-bottom: 15px;
            cursor: pointer;
            transition: background-color 0.2s;
        }

        .settings-option:hover {
            background: rgba(146, 125, 252, 0.1);
        }

        .option-info {
            display: flex;
            flex-direction: column;
        }

        .option-title {
            font-weight: 600;
            margin-bottom: 5px;
        }

        .option-desc {
            font-size: 12px;
            color: #a0a0a0;
        }

        /* PERUBAHAN: Gaya untuk sub-menu setting */
        .sub-menu {
            display: none;
            margin-top: 10px;
            padding: 15px;
            background: rgba(255, 255, 255, 0.03);
            border-radius: 8px;
            border: 1px solid var(--border-color);
        }

        .sub-menu.active {
            display: block;
        }

        .notification-option, .privacy-option {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 10px;
            padding: 10px;
            border-radius: 6px;
            transition: background-color 0.2s;
        }

        .notification-option:hover, .privacy-option:hover {
            background: rgba(146, 125, 252, 0.1);
        }

        .language-select {
            width: 100%;
            padding: 10px;
            border: 1px solid var(--border-color);
            border-radius: 8px;
            background: var(--input-bg);
            color: var(--text-color);
            margin-top: 10px;
        }

        /* PERUBAHAN: Area untuk postingan yang akan ditampilkan - DIHAPUS */
        .no-posts-message {
            text-align: center;
            padding: 40px 20px;
            color: #a0a0a0;
        }

        /* PERUBAHAN: Navigasi Bawah */
        .bottom-nav {
            display: flex;
            justify-content: space-around;
            align-items: center;
            background: var(--card-color);
            border-radius: 15px;
            padding: 15px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            -webkit-backdrop-filter: blur(5px);
            backdrop-filter: blur(5px);
            border: 1px solid var(--border-color);
            position: sticky;
            bottom: 20px;
            z-index: 10;
        }

        .nav-item {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 5px;
            cursor: pointer;
            transition: all 0.3s;
            padding: 10px 20px;
            border-radius: 10px;
            flex: 1;
            text-align: center;
        }

        .nav-item:hover {
            background: rgba(146, 125, 252, 0.1);
        }

        .nav-item.active {
            background: rgba(146, 125, 252, 0.2);
            color: var(--accent-purple);
        }

        .nav-icon {
            font-size: 24px;
        }

        .nav-label {
            font-size: 12px;
            font-weight: 600;
        }

        /* PERUBAHAN: Halaman Video Shorts */
        .shorts-page {
            width: 100%;
            height: 100vh;
            background: var(--bg-color);
            position: fixed;
            top: 0;
            left: 0;
            z-index: 100;
            overflow: hidden;
        }

        .shorts-container {
            height: 100%;
            display: flex;
            flex-direction: column;
        }

        .shorts-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px;
            background: rgba(0, 0, 0, 0.5);
            color: white;
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            z-index: 10;
        }

        .shorts-content {
            flex: 1;
            overflow-y: auto;
            -webkit-scroll-snap-type: y mandatory;
            -ms-scroll-snap-type: y mandatory;
            scroll-snap-type: y mandatory;
        }

        .short-video {
            height: 100vh;
            scroll-snap-align: start;
            position: relative;
            background: #000;
        }

        .short-video video {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .video-info {
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            padding: 20px;
            background: linear-gradient(transparent, rgba(0, 0, 0, 0.7));
            color: white;
        }

        .video-actions {
            position: absolute;
            right: 20px;
            bottom: 100px;
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        .action-btn {
            background: none;
            border: none;
            color: white;
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 5px;
            cursor: pointer;
        }

        .action-icon {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.2);
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 20px;
        }

        .action-count {
            font-size: 12px;
        }

        /* PERUBAHAN: Gaya untuk judul beranda di main content */
        .home-title-main {
            font-size: 24px;
            font-weight: 700;
            color: var(--accent-purple);
            margin-bottom: 20px;
            padding-bottom: 10px;
            border-bottom: 2px solid var(--border-color);
        }

        /* BARU: Halaman Upload Konten */
        .upload-page {
            width: 100%;
            height: 100vh;
            background: var(--bg-color);
            position: fixed;
            top: 0;
            left: 0;
            z-index: 100;
            display: flex;
            flex-direction: column;
        }

        .upload-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px;
            background: var(--card-color);
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            z-index: 10;
        }

        .upload-content {
            flex: 1;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
            gap: 20px;
            overflow-y: auto;
        }

        .upload-options {
            display: flex;
            gap: 20px;
            margin-bottom: 30px;
            flex-wrap: wrap;
            justify-content: center;
        }

        .upload-option {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 10px;
            padding: 20px;
            background: var(--card-color);
            border-radius: 15px;
            cursor: pointer;
            transition: all 0.3s;
            width: 120px;
            text-align: center;
        }

        .upload-option:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
        }

        .upload-option-icon {
            font-size: 40px;
            color: var(--accent-purple);
        }

        .upload-option-text {
            font-weight: 600;
            font-size: 14px;
        }

        .camera-container {
            width: 100%;
            max-width: 500px;
            background: var(--card-color);
            border-radius: 15px;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 20px;
        }

        .camera-preview {
            width: 100%;
            height: 300px;
            background: #000;
            border-radius: 10px;
            overflow: hidden;
            position: relative;
        }

        .camera-preview video, .camera-preview canvas {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .camera-controls {
            display: flex;
            gap: 15px;
            flex-wrap: wrap;
            justify-content: center;
        }

        .camera-btn {
            padding: 12px 20px;
            background: var(--accent-purple);
            border: none;
            border-radius: 8px;
            color: white;
            font-weight: 600;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .camera-btn:hover {
            background: #7a68e0;
        }

        .camera-btn.secondary {
            background: rgba(146, 125, 252, 0.2);
            color: var(--accent-purple);
        }

        .camera-btn.secondary:hover {
            background: rgba(146, 125, 252, 0.3);
        }

        .recording-indicator {
            display: flex;
            align-items: center;
            gap: 10px;
            color: #ff6b6b;
            font-weight: 600;
        }

        .recording-dot {
            width: 12px;
            height: 12px;
            background: #ff6b6b;
            border-radius: 50%;
            animation: pulse 1.5s infinite;
        }

        @keyframes pulse {
            0% { opacity: 1; }
            50% { opacity: 0.5; }
            100% { opacity: 1; }
        }

        .upload-preview {
            width: 100%;
            max-width: 500px;
            background: var(--card-color);
            border-radius: 15px;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 20px;
        }

        .preview-media {
            width: 100%;
            max-height: 400px;
            border-radius: 10px;
            overflow: hidden;
        }

        .preview-media img, .preview-media video {
            width: 100%;
            height: 100%;
            object-fit: contain;
        }

        .preview-text {
            width: 100%;
            min-height: 200px;
            padding: 15px;
            background: var(--input-bg);
            border: 1px solid var(--border-color);
            border-radius: 10px;
            font-size: 16px;
            color: var(--text-color);
            resize: vertical;
        }

        .edit-controls {
            display: flex;
            gap: 10px;
            flex-wrap: wrap;
            justify-content: center;
        }

        .edit-btn {
            padding: 8px 15px;
            background: rgba(146, 125, 252, 0.2);
            border: 1px solid var(--accent-purple);
            border-radius: 6px;
            color: var(--accent-purple);
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s;
        }

        .edit-btn:hover {
            background: rgba(146, 125, 252, 0.3);
        }

        /* BARU: Gaya untuk postingan di beranda */
        .post {
            background: var(--card-color);
            border-radius: 15px;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            border: 1px solid var(--border-color);
        }

        .post-header {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-bottom: 15px;
        }

        .post-user-avatar {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            object-fit: cover;
            border: 2px solid var(--accent-purple);
        }

        .post-user-info {
            display: flex;
            flex-direction: column;
        }

        .post-username {
            font-weight: 600;
            font-size: 16px;
        }

        .post-time {
            font-size: 12px;
            color: #a0a0a0;
        }

        .post-content {
            margin-bottom: 15px;
        }

        .post-text {
            margin-bottom: 10px;
            line-height: 1.5;
        }

        .post-media {
            width: 100%;
            border-radius: 10px;
            overflow: hidden;
            margin-bottom: 10px;
        }

        .post-media img, .post-media video {
            width: 100%;
            max-height: 500px;
            object-fit: contain;
        }

        .post-stats {
            display: flex;
            justify-content: space-between;
            margin-bottom: 10px;
            font-size: 14px;
            color: #a0a0a0;
        }

        .post-actions {
            display: flex;
            justify-content: space-around;
            border-top: 1px solid var(--border-color);
            padding-top: 15px;
        }

        .post-action {
            display: flex;
            align-items: center;
            gap: 5px;
            cursor: pointer;
            transition: color 0.3s;
            padding: 5px 10px;
            border-radius: 8px;
        }

        .post-action:hover {
            background: rgba(146, 125, 252, 0.1);
            color: var(--accent-purple);
        }

        .post-action.active {
            color: var(--accent-purple);
        }

        .post-action-icon {
            font-size: 20px;
        }

        .post-action-count {
            font-size: 14px;
            font-weight: 600;
        }

        .comments-section {
            margin-top: 15px;
            padding-top: 15px;
            border-top: 1px solid var(--border-color);
        }

        .comment-input {
            display: flex;
            gap: 10px;
            margin-bottom: 15px;
        }

        .comment-input input {
            flex: 1;
            padding: 10px 15px;
            border: 1px solid var(--border-color);
            border-radius: 20px;
            background: var(--input-bg);
            color: var(--text-color);
        }

        .comment-btn {
            padding: 10px 15px;
            background: var(--accent-purple);
            border: none;
            border-radius: 20px;
            color: white;
            font-weight: 600;
            cursor: pointer;
        }

        .comment {
            display: flex;
            gap: 10px;
            margin-bottom: 15px;
        }

        .comment-avatar {
            width: 30px;
            height: 30px;
            border-radius: 50%;
            object-fit: cover;
        }

        .comment-content {
            flex: 1;
        }

        .comment-user {
            font-weight: 600;
            font-size: 14px;
            margin-bottom: 5px;
        }

        .comment-text {
            font-size: 14px;
            line-height: 1.4;
        }

        .comment-actions {
            display: flex;
            gap: 10px;
            margin-top: 5px;
            font-size: 12px;
            color: #a0a0a0;
        }

        .comment-action {
            cursor: pointer;
        }

        .comment-action:hover {
            color: var(--accent-purple);
        }

        /* BARU: Gaya untuk editor teks yang lebih lengkap */
        .text-editor {
            width: 100%;
            max-width: 500px;
            background: var(--card-color);
            border-radius: 15px;
            padding: 20px;
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        .editor-toolbar {
            display: flex;
            gap: 10px;
            flex-wrap: wrap;
            justify-content: center;
            padding: 10px;
            background: rgba(255, 255, 255, 0.05);
            border-radius: 10px;
        }

        .toolbar-btn {
            padding: 8px 12px;
            background: rgba(146, 125, 252, 0.2);
            border: 1px solid var(--accent-purple);
            border-radius: 6px;
            color: var(--accent-purple);
            cursor: pointer;
            transition: all 0.3s;
        }

        .toolbar-btn:hover {
            background: rgba(146, 125, 252, 0.3);
        }

        .toolbar-btn.active {
            background: var(--accent-purple);
            color: white;
        }

        .editor-content {
            min-height: 300px;
            padding: 15px;
            background: var(--input-bg);
            border: 1px solid var(--border-color);
            border-radius: 10px;
            font-size: 16px;
            color: var(--text-color);
            line-height: 1.6;
        }

        .editor-content:focus {
            outline: none;
            border-color: var(--accent-purple);
        }

        /* BARU: Gaya untuk editor gambar */
        .image-editor {
            width: 100%;
            max-width: 500px;
            background: var(--card-color);
            border-radius: 15px;
            padding: 20px;
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        .editor-preview {
            width: 100%;
            max-height: 400px;
            border-radius: 10px;
            overflow: hidden;
            position: relative;
        }

        .editor-preview img {
            width: 100%;
            height: 100%;
            object-fit: contain;
        }

        .editor-controls {
            display: flex;
            gap: 10px;
            flex-wrap: wrap;
            justify-content: center;
        }

        .control-group {
            display: flex;
            flex-direction: column;
            gap: 10px;
            padding: 15px;
            background: rgba(255, 255, 255, 0.05);
            border-radius: 10px;
        }

        .control-label {
            font-size: 14px;
            font-weight: 600;
            color: var(--accent-purple);
        }

        .control-slider {
            width: 100%;
        }

        .filter-options {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 10px;
            margin-top: 10px;
        }

        .filter-option {
            padding: 8px;
            text-align: center;
            background: rgba(146, 125, 252, 0.1);
            border-radius: 6px;
            cursor: pointer;
            transition: all 0.3s;
        }

        .filter-option:hover {
            background: rgba(146, 125, 252, 0.2);
        }

        .filter-option.active {
            background: var(--accent-purple);
            color: white;
        }

        /* BARU: Halaman Profil Pengguna */
        .user-profile-page {
            width: 100%;
            max-width: 600px;
            background: var(--card-color);
            border-radius: 15px;
            padding: 30px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
            -webkit-backdrop-filter: blur(10px);
            backdrop-filter: blur(10px);
            border: 1px solid var(--border-color);
        }

        .profile-header {
            display: flex;
            align-items: center;
            gap: 20px;
            margin-bottom: 30px;
        }

        .profile-header .profile-pic {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            object-fit: cover;
            border: 3px solid var(--accent-purple);
        }

        .profile-info {
            flex: 1;
        }

        .profile-name {
            font-size: 24px;
            font-weight: 700;
            margin-bottom: 5px;
        }

        .profile-username {
            font-size: 16px;
            color: #a0a0a0;
            margin-bottom: 15px;
        }

        .profile-stats {
            display: flex;
            gap: 20px;
            margin-bottom: 20px;
        }

        .stat-item {
            text-align: center;
        }

        .stat-count {
            font-size: 18px;
            font-weight: 700;
        }

        .stat-label {
            font-size: 12px;
            color: #a0a0a0;
        }

        .profile-actions {
            display: flex;
            gap: 10px;
            margin-bottom: 30px;
        }

        .action-button {
            flex: 1;
            padding: 12px;
            border-radius: 8px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s;
            text-align: center;
        }

        .follow-button {
            background: var(--accent-purple);
            color: white;
            border: none;
        }

        .follow-button:hover {
            background: #7a68e0;
        }

        .message-button {
            background: rgba(146, 125, 252, 0.2);
            color: var(--accent-purple);
            border: 1px solid var(--accent-purple);
        }

        .message-button:hover {
            background: rgba(146, 125, 252, 0.3);
        }

        .profile-tabs {
            display: flex;
            border-bottom: 1px solid var(--border-color);
            margin-bottom: 20px;
        }

        .profile-tab {
            padding: 10px 20px;
            cursor: pointer;
            transition: all 0.3s;
            border-bottom: 2px solid transparent;
        }

        .profile-tab.active {
            border-bottom: 2px solid var(--accent-purple);
            color: var(--accent-purple);
            font-weight: 600;
        }

        .profile-tab:hover {
            background: rgba(146, 125, 252, 0.1);
        }

        .profile-posts {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 10px;
        }

        .profile-post {
            aspect-ratio: 1;
            border-radius: 10px;
            overflow: hidden;
            background: rgba(255, 255, 255, 0.05);
            cursor: pointer;
            position: relative;
        }

        .profile-post img, .profile-post video {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .profile-post-text {
            padding: 15px;
            font-size: 14px;
            line-height: 1.4;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
        }

        .no-posts {
            grid-column: 1 / -1;
            text-align: center;
            padding: 40px 20px;
            color: #a0a0a0;
        }

        /* BARU: Halaman Chat */
        .chat-page {
            width: 100%;
            height: 100vh;
            background: var(--bg-color);
            position: fixed;
            top: 0;
            left: 0;
            z-index: 100;
            display: flex;
            flex-direction: column;
        }

        .chat-header {
            display: flex;
            align-items: center;
            padding: 15px 20px;
            background: var(--card-color);
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            z-index: 10;
            gap: 15px;
        }

        .chat-header .profile-pic {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            object-fit: cover;
            border: 2px solid var(--accent-purple);
        }

        .chat-info {
            flex: 1;
        }

        .chat-name {
            font-weight: 600;
            font-size: 16px;
        }

        .chat-status {
            font-size: 12px;
            color: #a0a0a0;
        }

        .chat-actions {
            display: flex;
            gap: 15px;
        }

        .chat-action-btn {
            background: none;
            border: none;
            color: var(--accent-purple);
            font-size: 20px;
            cursor: pointer;
        }

        .chat-content {
            flex: 1;
            padding: 20px;
            overflow-y: auto;
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        .message {
            max-width: 70%;
            padding: 12px 15px;
            border-radius: 15px;
            position: relative;
            word-wrap: break-word;
        }

        .message.sent {
            align-self: flex-end;
            background: var(--accent-purple);
            color: white;
            border-bottom-right-radius: 5px;
        }

        .message.received {
            align-self: flex-start;
            background: var(--card-color);
            border: 1px solid var(--border-color);
            border-bottom-left-radius: 5px;
        }

        .message-time {
            font-size: 10px;
            text-align: right;
            margin-top: 5px;
            opacity: 0.7;
        }

        .message-media {
            max-width: 100%;
            border-radius: 10px;
            margin-top: 5px;
        }

        .message-media img, .message-media video {
            max-width: 100%;
            border-radius: 10px;
        }

        .chat-input-container {
            display: flex;
            padding: 15px 20px;
            background: var(--card-color);
            border-top: 1px solid var(--border-color);
            gap: 10px;
            align-items: flex-end;
        }

        .chat-input {
            flex: 1;
            padding: 12px 15px;
            border: 1px solid var(--border-color);
            border-radius: 20px;
            background: var(--input-bg);
            color: var(--text-color);
            resize: none;
            max-height: 120px;
            font-size: 14px;
        }

        .chat-input:focus {
            outline: none;
            border-color: var(--accent-purple);
        }

        .chat-attach-btn {
            background: none;
            border: none;
            color: var(--accent-purple);
            font-size: 24px;
            cursor: pointer;
            padding: 8px;
        }

        .chat-send-btn {
            background: var(--accent-purple);
            border: none;
            color: white;
            width: 40px;
            height: 40px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            font-size: 18px;
        }

        .chat-send-btn:hover {
            background: #7a68e0;
        }

        .sticker-picker {
            display: none;
            position: absolute;
            bottom: 70px;
            left: 20px;
            right: 20px;
            background: var(--card-color);
            border-radius: 15px;
            padding: 15px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            border: 1px solid var(--border-color);
            z-index: 20;
            max-height: 300px;
            overflow-y: auto;
        }

        .sticker-picker.active {
            display: block;
        }

        .sticker-category {
            margin-bottom: 15px;
        }

        .sticker-category-title {
            font-weight: 600;
            margin-bottom: 10px;
            color: var(--accent-purple);
        }

        .sticker-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 10px;
        }

        .sticker {
            font-size: 30px;
            text-align: center;
            cursor: pointer;
            padding: 5px;
            border-radius: 8px;
            transition: background-color 0.2s;
        }

        .sticker:hover {
            background: rgba(146, 125, 252, 0.1);
        }

        .media-preview {
            position: absolute;
            bottom: 70px;
            left: 20px;
            right: 20px;
            background: var(--card-color);
            border-radius: 15px;
            padding: 15px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            border: 1px solid var(--border-color);
            z-index: 20;
            display: none;
        }

        .media-preview.active {
            display: block;
        }

        .media-preview-content {
            max-height: 200px;
            overflow: hidden;
            border-radius: 10px;
            margin-bottom: 15px;
        }

        .media-preview-content img, .media-preview-content video {
            width: 100%;
            height: 100%;
            object-fit: contain;
        }

        .media-preview-actions {
            display: flex;
            justify-content: flex-end;
            gap: 10px;
        }

        /* BARU: Gaya untuk daftar teman */
        .friends-list {
            margin-top: 20px;
        }

        .friends-list-title {
            font-size: 16px;
            font-weight: 600;
            margin-bottom: 15px;
            color: var(--accent-purple);
        }

        .friend-item {
            display: flex;
            align-items: center;
            gap: 10px;
            padding: 10px;
            border-radius: 8px;
            margin-bottom: 8px;
            background: rgba(255, 255, 255, 0.05);
            transition: background-color 0.2s;
        }

        .friend-item:hover {
            background: rgba(146, 125, 252, 0.1);
        }

        .friend-avatar {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            object-fit: cover;
            border: 2px solid var(--accent-purple);
        }

        .friend-details {
            flex: 1;
        }

        .friend-name {
            font-weight: 600;
            font-size: 14px;
        }

        .friend-status {
            font-size: 12px;
            color: #a0a0a0;
            display: flex;
            align-items: center;
            gap: 5px;
        }

        .status-indicator {
            width: 8px;
            height: 8px;
            border-radius: 50%;
            display: inline-block;
        }

        .status-online {
            background-color: #4CAF50;
        }

        .status-offline {
            background-color: #f44336;
        }

        /* BARU: Halaman Pencarian */
        .search-page {
            width: 100%;
            height: 100vh;
            background: var(--bg-color);
            position: fixed;
            top: 0;
            left: 0;
            z-index: 100;
            display: flex;
            flex-direction: column;
        }

        .search-header {
            display: flex;
            align-items: center;
            padding: 15px 20px;
            background: var(--card-color);
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            z-index: 10;
            gap: 15px;
        }

        .search-input-container {
            flex: 1;
            display: flex;
            align-items: center;
            background: var(--input-bg);
            border-radius: 20px;
            padding: 8px 15px;
            border: 1px solid var(--border-color);
        }

        .search-input {
            flex: 1;
            background: transparent;
            border: none;
            color: var(--text-color);
            font-size: 16px;
            padding: 8px;
        }

        .search-input:focus {
            outline: none;
        }

        .search-clear {
            background: none;
            border: none;
            color: var(--accent-purple);
            font-size: 20px;
            cursor: pointer;
            padding: 5px;
        }

        .search-tabs {
            display: flex;
            background: var(--card-color);
            border-bottom: 1px solid var(--border-color);
            padding: 0 20px;
        }

        .search-tab {
            padding: 15px 20px;
            cursor: pointer;
            transition: all 0.3s;
            border-bottom: 2px solid transparent;
            font-weight: 500;
        }

        .search-tab.active {
            border-bottom: 2px solid var(--accent-purple);
            color: var(--accent-purple);
            font-weight: 600;
        }

        .search-tab:hover {
            background: rgba(146, 125, 252, 0.1);
        }

        .search-content {
            flex: 1;
            padding: 20px;
            overflow-y: auto;
        }

        .search-section {
            margin-bottom: 30px;
        }

        .search-section-title {
            font-size: 18px;
            font-weight: 600;
            margin-bottom: 15px;
            color: var(--accent-purple);
        }

        .search-results-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(150px, 1fr));
            gap: 15px;
        }

        .search-result-item {
            border-radius: 10px;
            overflow: hidden;
            background: var(--card-color);
            cursor: pointer;
            transition: transform 0.3s;
        }

        .search-result-item:hover {
            transform: translateY(-5px);
        }

        .search-result-media {
            width: 100%;
            aspect-ratio: 9/16;
            object-fit: cover;
        }

        .search-result-info {
            padding: 10px;
        }

        .search-result-name {
            font-weight: 600;
            font-size: 14px;
            margin-bottom: 5px;
        }

        .search-result-username {
            font-size: 12px;
            color: #a0a0a0;
        }

        .search-result-stats {
            display: flex;
            justify-content: space-between;
            font-size: 11px;
            color: #a0a0a0;
            margin-top: 5px;
        }

        .user-result-item {
            display: flex;
            align-items: center;
            gap: 15px;
            padding: 15px;
            border-radius: 10px;
            background: var(--card-color);
            margin-bottom: 10px;
            cursor: pointer;
            transition: background-color 0.2s;
        }

        .user-result-item:hover {
            background: rgba(146, 125, 252, 0.1);
        }

        .user-result-avatar {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            object-fit: cover;
            border: 2px solid var(--accent-purple);
        }

        .user-result-info {
            flex: 1;
        }

        .user-result-name {
            font-weight: 600;
            font-size: 16px;
            margin-bottom: 5px;
        }

        .user-result-username {
            font-size: 14px;
            color: #a0a0a0;
            margin-bottom: 5px;
        }

        .user-result-bio {
            font-size: 12px;
            color: #a0a0a0;
        }

        .user-result-follow-btn {
            padding: 8px 15px;
            background: var(--accent-purple);
            border: none;
            border-radius: 20px;
            color: white;
            font-weight: 600;
            cursor: pointer;
        }

        .user-result-follow-btn:hover {
            background: #7a68e0;
        }

        .live-result-item {
            border-radius: 10px;
            overflow: hidden;
            background: var(--card-color);
            cursor: pointer;
            position: relative;
        }

        .live-result-media {
            width: 100%;
            aspect-ratio: 9/16;
            object-fit: cover;
        }

        .live-badge {
            position: absolute;
            top: 10px;
            left: 10px;
            background: #ff6b6b;
            color: white;
            padding: 4px 8px;
            border-radius: 4px;
            font-size: 12px;
            font-weight: 600;
        }

        .live-viewers {
            position: absolute;
            bottom: 10px;
            left: 10px;
            background: rgba(0, 0, 0, 0.7);
            color: white;
            padding: 4px 8px;
            border-radius: 4px;
            font-size: 12px;
        }

        .live-info {
            padding: 10px;
        }

        .live-title {
            font-weight: 600;
            font-size: 14px;
            margin-bottom: 5px;
        }

        .live-user {
            font-size: 12px;
            color: #a0a0a0;
        }

        .no-results {
            text-align: center;
            padding: 40px 20px;
            color: #a0a0a0;
        }

        .no-results-icon {
            font-size: 60px;
            margin-bottom: 20px;
            opacity: 0.5;
        }

        /* BARU: Halaman Error Koneksi */
        .error-container {
            width: 90%;
            max-width: 500px;
            background: var(--card-color);
            border-radius: 20px;
            padding: 40px 30px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.3);
            -webkit-backdrop-filter: blur(15px);
            backdrop-filter: blur(15px);
            border: 1px solid var(--border-color);
            text-align: center;
        }

        .error-icon {
            font-size: 80px;
            margin-bottom: 20px;
            color: #ff6b6b;
        }

        .error-title {
            font-size: 28px;
            font-weight: 700;
            color: var(--accent-purple);
            margin-bottom: 15px;
        }

        .error-message {
            font-size: 16px;
            margin-bottom: 30px;
            color: var(--text-color);
            opacity: 0.8;
        }

        .reload-btn {
            padding: 15px 30px;
            background-color: var(--accent-purple);
            color: white;
            border: none;
            border-radius: 12px;
            font-size: 18px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            margin-bottom: 15px;
        }

        .reload-btn:hover {
            background-color: #7a68e0;
            transform: translateY(-3px);
            box-shadow: 0 10px 20px rgba(146, 125, 252, 0.3);
        }

        .connection-status {
            font-size: 14px;
            color: #ff6b6b;
            font-weight: 600;
        }

        /* Media Query Responsif */
        @media (max-width: 900px) {
            .home-container {
                grid-template-columns: 1fr;
                grid-template-areas:
                    "header"
                    "sidebar-left"
                    "main-content"
                    "sidebar-right"
                    "bottom-nav";
            }
            .sidebar-left, .sidebar-right {
                display: block;
            }
            .header {
                position: static;
            }
            .search-bar {
                margin: 0 10px;
            }
            .dropdown-menu {
                right: 10px; /* Sesuaikan posisi di layar kecil */
            }
            .header-profile-info .username {
                display: none; /* Sembunyikan nama di layar kecil */
            }
            .header-profile-info .app-logo {
                display: none; /* Sembunyikan logo saat ada foto profil di header pada layar kecil */
            }
            .header-profile-info {
                 margin-right: 10px;
            }
            
            /* Responsif untuk profil horizontal */
            .user-profile {
                flex-direction: column; /* Kembali ke vertikal di mobile */
                text-align: center;
                gap: 10px;
            }
            .profile-name-display {
                text-align: center;
            }
            
            /* Responsif untuk navigasi bawah */
            .bottom-nav {
                padding: 10px;
            }
            .nav-item {
                padding: 8px 12px;
            }
            .nav-icon {
                font-size: 20px;
            }
            .nav-label {
                font-size: 10px;
            }

            /* Responsif untuk halaman upload */
            .upload-options {
                flex-direction: column;
                align-items: center;
            }
            .upload-option {
                width: 100%;
                max-width: 200px;
            }

            /* Responsif untuk editor */
            .editor-toolbar {
                flex-direction: column;
                align-items: center;
            }
            .filter-options {
                grid-template-columns: repeat(2, 1fr);
            }

            /* Responsif untuk halaman profil pengguna */
            .profile-header {
                flex-direction: column;
                text-align: center;
            }
            .profile-stats {
                justify-content: center;
            }
            .profile-actions {
                flex-direction: column;
            }
            .profile-posts {
                grid-template-columns: repeat(2, 1fr);
            }

            /* Responsif untuk halaman chat */
            .message {
                max-width: 85%;
            }
            .sticker-grid {
                grid-template-columns: repeat(3, 1fr);
            }

            /* Responsif untuk halaman pencarian */
            .search-results-grid {
                grid-template-columns: repeat(2, 1fr);
            }
            .search-tabs {
                overflow-x: auto;
                white-space: nowrap;
            }
            .search-tab {
                padding: 15px;
            }
        }
    </style>
</head>
<body>

    <!-- HALAMAN AWAL BARU -->
    <div class="welcome-container" id="welcome-screen">
        <div class="app-logo-large">SocialApp</div>
        <div class="app-slogan">Temukan dan bagikan momen terbaik Anda</div>
        
        <div class="welcome-buttons">
            <button class="welcome-btn register-btn" onclick="showRegister()">
                <span class="btn-icon">📝</span>
                <span>Daftar</span>
            </button>
            <button class="welcome-btn login-btn" onclick="showLogin()">
                <span class="btn-icon">🔐</span>
                <span>Login</span>
            </button>
        </div>
    </div>

    <!-- BARU: Halaman Error Koneksi -->
    <div class="error-container" id="error-screen" style="display:none;">
        <div class="error-icon">📶</div>
        <div class="error-title">Koneksi Terputus</div>
        <div class="error-message">Tidak dapat terhubung ke internet. Periksa koneksi Anda dan coba lagi.</div>
        <button class="reload-btn" onclick="checkConnection()">
            <span class="btn-icon">🔄</span>
            <span>Muat Ulang</span>
        </button>
        <div class="connection-status" id="connection-status">NON KONEKSI</div>
    </div>

    <div class="auth-container" id="auth-screen" style="display:none;">
        <h2>Daftar Akun Baru</h2>
        
        <form id="register-form">
            <div class="input-group">
                <label for="reg_email">Email</label>
                <input type="email" id="reg_email" placeholder="contoh@email.com" required>
            </div>
            
            <div class="input-group">
                <label for="reg_password">Kata Sandi</label>
                <input type="password" id="reg_password" placeholder="Minimal 8 karakter" required>
            </div>
            
            <div class="input-group">
                <button type="submit">DAFTAR</button>
            </div>
        </form>

        <div class="link-group">
            <a href="#" onclick="showLogin()">Sudah punya akun? **LOGIN**</a>
            <span style="color:var(--text-color);"> | </span>
            <a href="#" onclick="showForgotPassword()">**Lupa Kata Sandi?**</a>
        </div>
    </div>
    
    <div class="auth-container" id="login-screen" style="display:none;">
        <h2>Login Akun</h2>
        <form id="login-form">
            <div class="input-group">
                <label for="log_email">Email</label>
                <input type="email" id="log_email" placeholder="Email Anda" required>
            </div>
            <div class="input-group">
                <label for="log_password">Kata Sandi</label>
                <input type="password" id="log_password" placeholder="Kata Sandi Anda" required>
            </div>
            <div class="input-group">
                <button type="submit">LOGIN</button>
            </div>
        </form>
        <div class="link-group">
            <a href="#" onclick="showRegister()">Belum punya akun? **DAFTAR**</a>
            <span style="color:var(--text-color);"> | </span>
            <a href="#" onclick="showForgotPassword()">**Lupa Kata Sandi?**</a>
        </div>
    </div>
    
    <div class="auth-container" id="forgot-screen" style="display:none;">
        <h2>Lupa Kata Sandi</h2>
        <p style="text-align: center; margin-bottom: 20px; font-size: 14px;">Masukkan email Anda, kami akan mengirimkan tautan reset.</p>
        <form id="forgot-form">
            <div class="input-group">
                <label for="forgot_email">Email</label>
                <input type="email" id="forgot_email" placeholder="Email terdaftar Anda" required>
            </div>
            <div class="input-group">
                <button type="submit">KIRIM TAUTAN RESET</button>
            </div>
        </form>
        <div class="link-group">
            <a href="#" onclick="showLogin()">**Kembali ke Login**</a>
        </div>
    </div>

    <!-- BARU: Halaman Reset Password -->
    <div class="auth-container" id="reset-password-screen" style="display:none;">
        <h2>Reset Kata Sandi</h2>
        <p style="text-align: center; margin-bottom: 20px; font-size: 14px;">Masukkan kata sandi baru untuk akun Anda.</p>
        <form id="reset-password-form">
            <div class="input-group">
                <label for="reset_password">Kata Sandi Baru</label>
                <input type="password" id="reset_password" placeholder="Minimal 8 karakter" required>
            </div>
            <div class="input-group">
                <label for="reset_confirm_password">Konfirmasi Kata Sandi</label>
                <input type="password" id="reset_confirm_password" placeholder="Ulangi kata sandi baru" required>
            </div>
            <div class="input-group">
                <button type="submit">RESET KATA SANDI</button>
            </div>
        </form>
        <div class="link-group">
            <a href="#" onclick="showLogin()">**Kembali ke Login**</a>
        </div>
    </div>

    <div class="auth-container" id="profile-setup-screen" style="display:none;">
        <h2>Selesaikan Profil Anda ✨</h2>
        <form id="profile-setup-form">
            <div class="profile-setup">
                <div class="profile-placeholder" onclick="document.getElementById('file_upload_input').click()">
                    <img id="preview-profile-pic" src="" alt="Foto Profil" style="display:none;">
                    <span id="placeholder-text">Klik untuk Upload Foto (WAJIB)</span>
                </div>
                <p id="upload-warning" style="color: #ff6b6b; font-size: 14px; display: none;">**Wajib** unggah foto profil.</p>
            </div>
            
            <input type="file" id="file_upload_input" accept="image/*" style="display:none;">
            
            <div class="input-group" style="margin-top: 20px;">
                <label for="profile_name">Nama Profil</label>
                <input type="text" id="profile_name" placeholder="Nama yang akan ditampilkan (Wajib)" required>
            </div>
            
            <div class="input-group">
                <button type="submit">LANJUT KE BERANDA</button>
            </div>
        </form>
    </div>
    
    <div class="home-container" id="home-screen" style="display:none;">
        
        <header class="header">
            <div class="header-profile-info">
                <div class="app-logo">**App Logo**</div>
                <img src="https://via.placeholder.com/80/927dfc/ffffff?text=U" alt="Foto Profil Pengguna" id="user-profile-pic-header" class="profile-pic" onclick="showEditProfile()">
                <span class="username" id="user-profile-name-header">**Nama Pengguna Anda**</span>
            </div>
            
            <div class="search-bar">
                <input type="text" placeholder="Cari Video, Akun, Topik, atau Lainnya..." onclick="showSearchPage()">
            </div>
            
            <div class="menu-wrapper">
                <div class="menu-icon">
                    <span style="font-size: 24px;">&#9776;</span>
                </div>
                
                <div class="dropdown-menu">
                    <div class="dropdown-menu-item" onclick="showProfilePage()">
                        <span style="font-weight: 600;">&#128100; Profil Saya</span>
                        <p>Lihat dan edit profil Anda</p>
                    </div>
                    
                    <div class="dropdown-menu-item" onclick="showSettingsPage()">
                        <span style="font-weight: 600;">&#9881; Pengaturan</span>
                        <p>Atur preferensi aplikasi</p>
                    </div>

                    <div class="theme-toggle-container">
                        <span style="font-weight: 600;">🌙 Mode Gelap</span>
                        <label class="switch">
                            <input type="checkbox" id="dark-mode-toggle" checked>
                            <span class="slider"></span>
                        </label>
                    </div>
                    
                    <div class="dropdown-menu-item" onclick="logout()" style="color: #ff6b6b; font-weight: 600;">
                        <span>&#10145; Logout</span>
                    </div>
                </div>
            </div>
            </header>
        
        <div class="sidebar-left">
            <!-- PERUBAHAN: Profil sekarang horizontal -->
            <div class="user-profile">
                <img src="https://via.placeholder.com/80/927dfc/ffffff?text=U" alt="Foto Profil Pengguna" id="user-profile-pic-sidebar" class="profile-pic">
                <div class="profile-name-display">
                    <div class="name" id="user-profile-name-sidebar">**Nama Pengguna Anda**</div>
                    <div class="status">Online</div>
                </div>
            </div>
            
            <!-- PERUBAHAN: Fitur Tambah Teman Baru -->
            <div class="add-friend-section">
                <div class="add-friend-btn" onclick="toggleFriendSearch()">
                    <div class="icon">+</div>
                    <span>Tambah Pertemanan</span>
                </div>
                
                <div class="search-friend-container" id="searchFriendContainer">
                    <input type="text" class="search-friend-input" id="searchFriendInput" placeholder="Cari nama atau username..." oninput="searchFriends()">
                    
                    <div class="search-results" id="searchResults">
                        <!-- Hasil pencarian akan ditampilkan di sini -->
                    </div>
                </div>

                <!-- BARU: Daftar Teman yang Sudah Ditambahkan -->
                <div class="friends-list" id="friendsList">
                    <div class="friends-list-title">Teman Anda</div>
                    <div id="friendsContainer">
                        <!-- Daftar teman akan ditampilkan di sini -->
                    </div>
                </div>
            </div>
        </div>
        
        <div class="main-content">
            <!-- PERUBAHAN: Judul Beranda dipindah ke main content -->
            <div class="home-title-main">#Beranda</div>
            
            <!-- BARU: Area untuk postingan yang akan ditampilkan -->
            <div id="posts-container">
                <!-- Postingan akan ditampilkan di sini -->
            </div>
        </div>
        
        <div class="sidebar-right">
            <h3>**Rekomendasi Konten**</h3>
            <div style="margin-bottom: 15px; padding: 10px; background: rgba(146, 125, 252, 0.1); border-radius: 8px;">
                <p style="font-size: 14px; font-weight: 600;">#TrenHariIni</p>
                <p style="font-size: 12px; color: #a0a0a0;">Diskusi teknologi terbaru.</p>
            </div>
            <div style="margin-bottom: 15px; padding: 10px; background: rgba(146, 125, 252, 0.1); border-radius: 8px;">
                <p style="font-size: 14px; font-weight: 600;">@PenggunaPopuler</p>
                <p style="font-size: 12px; color: #a0a0a0;">Cek profil kreatif ini!</p>
            </div>
        </div>
        
        <!-- PERUBAHAN: Navigasi Bawah - DITAMBAH ITEM PROFIL -->
        <div class="bottom-nav">
            <div class="nav-item active" onclick="showHome()">
                <div class="nav-icon">🏠</div>
                <div class="nav-label">Beranda</div>
            </div>
            <div class="nav-item" onclick="showUploadPage()">
                <div class="nav-icon">📷</div>
                <div class="nav-label">Buat</div>
            </div>
            <div class="nav-item" onclick="showShortsPage()">
                <div class="nav-icon">🎬</div>
                <div class="nav-label">Shorts</div>
            </div>
            <div class="nav-item" onclick="showUserProfilePage()">
                <div class="nav-icon">👤</div>
                <div class="nav-label">Profil</div>
            </div>
        </div>
        
    </div>

    <!-- PERUBAHAN: Halaman Profil -->
    <div class="profile-page" id="profile-page" style="display:none;">
        <div class="page-header">
            <button class="back-btn" onclick="showHome()">←</button>
            <h1 class="page-title">Profil Saya</h1>
        </div>

        <div class="profile-display">
            <img src="https://via.placeholder.com/80/927dfc/ffffff?text=U" alt="Foto Profil" id="profile-page-pic" class="profile-pic">
            <h2 id="profile-page-name">Nama Pengguna</h2>
        </div>

        <div class="info-group">
            <div class="info-label">Email</div>
            <div class="info-value sensitive-info" id="profile-page-email">••••••••@•••••.com</div>
        </div>

        <div class="info-group">
            <div class="info-label">Kata Sandi</div>
            <div class="info-value sensitive-info">••••••••</div>
        </div>

        <div class="input-group">
            <label for="edit-profile-name">Nama Profil</label>
            <input type="text" id="edit-profile-name" placeholder="Masukkan nama baru">
        </div>

        <div class="input-group">
            <button type="button" onclick="updateProfile()">Perbarui Profil</button>
        </div>

        <div class="input-group">
            <label>Ubah Foto Profil</label>
            <input type="file" id="edit-profile-pic" accept="image/*" style="display:none;">
            <button type="button" onclick="document.getElementById('edit-profile-pic').click()">Pilih Foto Baru</button>
        </div>
    </div>

    <!-- PERUBAHAN: Halaman Setting - SEMUA FITUR AKTIF -->
    <div class="settings-page" id="settings-page" style="display:none;">
        <div class="page-header">
            <button class="back-btn" onclick="showHome()">←</button>
            <h1 class="page-title">Pengaturan</h1>
        </div>

        <!-- Mode Tampilan -->
        <div class="settings-option" onclick="toggleSubMenu('theme-menu')">
            <div class="option-info">
                <div class="option-title">Mode Tampilan</div>
                <div class="option-desc">Ubah antara mode gelap dan terang</div>
            </div>
            <div class="theme-toggle-container" style="border: none; padding: 0; margin: 0;">
                <span id="theme-status">🌙 Mode Gelap</span>
                <label class="switch">
                    <input type="checkbox" id="settings-dark-mode-toggle" checked>
                    <span class="slider"></span>
                </label>
            </div>
        </div>

        <!-- Notifikasi -->
        <div class="settings-option" onclick="toggleSubMenu('notification-menu')">
            <div class="option-info">
                <div class="option-title">Notifikasi</div>
                <div class="option-desc">Kelama pemberitahuan aplikasi</div>
            </div>
            <span>▼</span>
        </div>

        <div class="sub-menu" id="notification-menu">
            <div class="notification-option">
                <div class="option-info">
                    <div class="option-title">Notifikasi Postingan</div>
                    <div class="option-desc">Dapatkan pemberitahuan postingan baru</div>
                </div>
                <label class="switch">
                    <input type="checkbox" id="post-notification" checked>
                    <span class="slider"></span>
                </label>
            </div>
            <div class="notification-option">
                <div class="option-info">
                    <div class="option-title">Notifikasi Pesan</div>
                    <div class="option-desc">Dapatkan pemberitahuan pesan baru</div>
                </div>
                <label class="switch">
                    <input type="checkbox" id="message-notification" checked>
                    <span class="slider"></span>
                </label>
            </div>
            <div class="notification-option">
                <div class="option-info">
                    <div class="option-title">Notifikasi Pertemanan</div>
                    <div class="option-desc">Dapatkan pemberitahuan permintaan teman</div>
                </div>
                <label class="switch">
                    <input type="checkbox" id="friend-notification" checked>
                    <span class="slider"></span>
                </label>
            </div>
        </div>

        <!-- Privasi -->
        <div class="settings-option" onclick="toggleSubMenu('privacy-menu')">
            <div class="option-info">
                <div class="option-title">Privasi</div>
                <div class="option-desc">Atur siapa yang dapat melihat profil Anda</div>
            </div>
            <span>▼</span>
        </div>

        <div class="sub-menu" id="privacy-menu">
            <div class="privacy-option">
                <div class="option-info">
                    <div class="option-title">Profil Publik</div>
                    <div class="option-desc">Semua orang dapat melihat profil Anda</div>
                </div>
                <label class="switch">
                    <input type="checkbox" id="public-profile" checked>
                    <span class="slider"></span>
                </label>
            </div>
            <div class="privacy-option">
                <div class="option-info">
                    <div class="option-title">Tampilkan Status Online</div>
                    <div class="option-desc">Orang lain dapat melihat status online Anda</div>
                </div>
                <label class="switch">
                    <input type="checkbox" id="online-status" checked>
                    <span class="slider"></span>
                </label>
            </div>
            <div class="privacy-option">
                <div class="option-info">
                    <div class="option-title">Izinkan Pesan Langsung</div>
                    <div class="option-desc">Orang dapat mengirim pesan langsung</div>
                </div>
                <label class="switch">
                    <input type="checkbox" id="direct-messages" checked>
                    <span class="slider"></span>
                </label>
            </div>
        </div>

        <!-- Bahasa -->
        <div class="settings-option" onclick="toggleSubMenu('language-menu')">
            <div class="option-info">
                <div class="option-title">Bahasa</div>
                <div class="option-desc">Pilih bahasa aplikasi</div>
            </div>
            <span id="current-language">Indonesia ▼</span>
        </div>

        <div class="sub-menu" id="language-menu">
            <select class="language-select" id="language-select" onchange="changeLanguage(this.value)">
                <option value="id">Bahasa Indonesia</option>
                <option value="en">English</option>
                <option value="es">Español</option>
                <option value="fr">Français</option>
                <option value="de">Deutsch</option>
                <option value="ja">日本語</option>
                <option value="zh">中文</option>
            </select>
        </div>

        <!-- Pengaturan Akun -->
        <div class="settings-option" onclick="toggleSubMenu('account-menu')">
            <div class="option-info">
                <div class="option-title">Pengaturan Akun</div>
                <div class="option-desc">Kelola data akun Anda</div>
            </div>
            <span>▼</span>
        </div>

        <div class="sub-menu" id="account-menu">
            <div class="input-group">
                <label>Ubah Email</label>
                <input type="email" id="change-email" placeholder="Email baru">
                <button type="button" onclick="changeEmail()">Simpan Email</button>
            </div>
            <div class="input-group">
                <label>Ubah Kata Sandi</label>
                <input type="password" id="current-password" placeholder="Kata sandi saat ini">
                <input type="password" id="new-password" placeholder="Kata sandi baru">
                <button type="button" onclick="changePassword()">Simpan Kata Sandi</button>
            </div>
        </div>

        <!-- Reset Pengaturan -->
        <div class="settings-option" onclick="resetSettings()" style="color: #ff6b6b;">
            <div class="option-info">
                <div class="option-title">Reset Pengaturan</div>
                <div class="option-desc">Kembalikan semua pengaturan ke default</div>
            </div>
            <span>🔄</span>
        </div>
    </div>

    <!-- PERUBAHAN: Halaman Video Shorts -->
    <div class="shorts-page" id="shorts-page" style="display:none;">
        <div class="shorts-header">
            <button class="back-btn" onclick="showHome()">←</button>
            <h2>Video Shorts</h2>
            <button class="option-btn" onclick="searchShorts()">🔍</button>
        </div>
        <div class="shorts-content" id="shorts-content">
            <!-- Video shorts akan ditampilkan di sini -->
            <div class="short-video">
                <video src="https://assets.mixkit.co/videos/preview/mixkit-tree-with-yellow-flowers-1173-large.mp4" controls autoplay muted loop></video>
                <div class="video-info">
                    <h3>@pengguna1</h3>
                    <p>Video pendek menarik pertama! #shorts #trending</p>
                </div>
                <div class="video-actions">
                    <button class="action-btn">
                        <div class="action-icon">❤️</div>
                        <div class="action-count">1.2K</div>
                    </button>
                    <button class="action-btn">
                        <div class="action-icon">💬</div>
                        <div class="action-count">245</div>
                    </button>
                    <button class="action-btn">
                        <div class="action-icon">↗️</div>
                        <div class="action-count">Share</div>
                    </button>
                </div>
            </div>
            <div class="short-video">
                <video src="https://assets.mixkit.co/videos/preview/mixkit-going-down-a-curved-highway-through-a-mountain-34561-large.mp4" controls autoplay muted loop></video>
                <div class="video-info">
                    <h3>@pengguna2</h3>
                    <p>Pemandangan indah di perjalanan #nature #travel</p>
                </div>
                <div class="video-actions">
                    <button class="action-btn">
                        <div class="action-icon">❤️</div>
                        <div class="action-count">2.5K</div>
                    </button>
                    <button class="action-btn">
                        <div class="action-icon">💬</div>
                        <div class="action-count">512</div>
                    </button>
                    <button class="action-btn">
                        <div class="action-icon">↗️</div>
                        <div class="action-count">Share</div>
                    </button>
                </div>
            </div>
            <div class="short-video">
                <video src="https://assets.mixkit.co/videos/preview/mixkit-a-girl-blowing-a-bubblegum-balloon-1231-large.mp4" controls autoplay muted loop></video>
                <div class="video-info">
                    <h3>@pengguna3</h3>
                    <p>Funny moment dengan teman-teman #fun #comedy</p>
                </div>
                <div class="video-actions">
                    <button class="action-btn">
                        <div class="action-icon">❤️</div>
                        <div class="action-count">3.7K</div>
                    </button>
                    <button class="action-btn">
                        <div class="action-icon">💬</div>
                        <div class="action-count">891</div>
                    </button>
                    <button class="action-btn">
                        <div class="action-icon">↗️</div>
                        <div class="action-count">Share</div>
                    </button>
                </div>
            </div>
        </div>
    </div>

    <!-- BARU: Halaman Upload Konten -->
    <div class="upload-page" id="upload-page" style="display:none;">
        <div class="upload-header">
            <button class="back-btn" onclick="showHome()">←</button>
            <h2 class="page-title">Buat Konten Baru</h2>
            <div></div> <!-- Placeholder untuk alignment -->
        </div>
        
        <div class="upload-content" id="upload-content">
            <!-- Pilihan jenis konten -->
            <div class="upload-options">
                <div class="upload-option" onclick="showCameraInterface('photo')">
                    <div class="upload-option-icon">📷</div>
                    <div class="upload-option-text">Foto</div>
                </div>
                <div class="upload-option" onclick="showCameraInterface('video')">
                    <div class="upload-option-icon">🎥</div>
                    <div class="upload-option-text">Video</div>
                </div>
                <div class="upload-option" onclick="showTextInterface()">
                    <div class="upload-option-icon">📝</div>
                    <div class="upload-option-text">Teks</div>
                </div>
                <div class="upload-option" onclick="showGalleryInterface()">
                    <div class="upload-option-icon">🖼️</div>
                    <div class="upload-option-text">Galeri</div>
                </div>
            </div>
            
            <!-- Interface kamera untuk foto/video -->
            <div class="camera-container" id="camera-container" style="display:none;">
                <div class="camera-preview">
                    <video id="camera-preview" autoplay playsinline></video>
                    <canvas id="photo-canvas" style="display:none;"></canvas>
                </div>
                
                <div class="camera-controls">
                    <button class="camera-btn secondary" id="switch-camera-btn" onclick="switchCamera()">Ganti Kamera</button>
                    <button class="camera-btn" id="capture-btn" onclick="captureMedia()">Ambil Foto</button>
                    <button class="camera-btn" id="record-btn" onclick="toggleRecording()" style="display:none;">Mulai Rekam</button>
                </div>
                
                <div class="recording-indicator" id="recording-indicator" style="display:none;">
                    <div class="recording-dot"></div>
                    <span>Sedang Merekam...</span>
                </div>
            </div>
            
            <!-- Interface untuk teks dengan editor lengkap -->
            <div class="text-editor" id="text-container" style="display:none;">
                <div class="editor-toolbar">
                    <button class="toolbar-btn" onclick="formatText('bold')"><b>B</b></button>
                    <button class="toolbar-btn" onclick="formatText('italic')"><i>I</i></button>
                    <button class="toolbar-btn" onclick="formatText('underline')"><u>U</u></button>
                    <button class="toolbar-btn" onclick="formatText('heading1')">H1</button>
                    <button class="toolbar-btn" onclick="formatText('heading2')">H2</button>
                    <button class="toolbar-btn" onclick="addEmoji('😊')">😊</button>
                    <button class="toolbar-btn" onclick="addEmoji('😂')">😂</button>
                    <button class="toolbar-btn" onclick="addEmoji('❤️')">❤️</button>
                    <button class="toolbar-btn" onclick="addEmoji('🔥')">🔥</button>
                </div>
                <div class="editor-content" id="text-content" contenteditable="true" placeholder="Tulis sesuatu yang menarik..."></div>
                <button class="camera-btn" onclick="previewContent('text')">Preview</button>
            </div>
            
            <!-- Interface untuk galeri -->
            <div class="upload-preview" id="gallery-container" style="display:none;">
                <input type="file" id="gallery-input" accept="image/*,video/*" multiple style="display:none;" onchange="handleGallerySelection(this.files)">
                <button class="camera-btn" onclick="document.getElementById('gallery-input').click()">Pilih dari Galeri</button>
                <div id="gallery-preview"></div>
            </div>
            
            <!-- Preview dan edit konten sebelum upload -->
            <div class="upload-preview" id="preview-container" style="display:none;">
                <div class="preview-media" id="preview-media">
                    <!-- Media akan ditampilkan di sini -->
                </div>
                <textarea class="preview-text" id="post-description" placeholder="Tambahkan deskripsi..."></textarea>
                <div class="edit-controls" id="media-edit-controls">
                    <button class="edit-btn" onclick="applyFilter('normal')">Normal</button>
                    <button class="edit-btn" onclick="applyFilter('grayscale')">Grayscale</button>
                    <button class="edit-btn" onclick="applyFilter('sepia')">Sepia</button>
                    <button class="edit-btn" onclick="applyFilter('vintage')">Vintage</button>
                    <button class="edit-btn" onclick="rotateMedia()">Putar</button>
                    <button class="edit-btn" onclick="showAdvancedEditor()">Edit Lanjutan</button>
                </div>
                <button class="camera-btn" onclick="uploadPost()">Upload</button>
            </div>

            <!-- Editor gambar yang lebih advanced -->
            <div class="image-editor" id="advanced-editor" style="display:none;">
                <div class="editor-preview">
                    <img id="editor-image" src="" alt="Gambar yang diedit">
                </div>
                <div class="editor-controls">
                    <div class="control-group">
                        <div class="control-label">Kecerahan</div>
                        <input type="range" class="control-slider" id="brightness-slider" min="0" max="200" value="100" oninput="adjustBrightness(this.value)">
                    </div>
                    <div class="control-group">
                        <div class="control-label">Kontras</div>
                        <input type="range" class="control-slider" id="contrast-slider" min="0" max="200" value="100" oninput="adjustContrast(this.value)">
                    </div>
                    <div class="control-group">
                        <div class="control-label">Saturasi</div>
                        <input type="range" class="control-slider" id="saturation-slider" min="0" max="200" value="100" oninput="adjustSaturation(this.value)">
                    </div>
                </div>
                <div class="control-group">
                    <div class="control-label">Filter</div>
                    <div class="filter-options">
                        <div class="filter-option" onclick="applyFilter('normal')">Normal</div>
                        <div class="filter-option" onclick="applyFilter('grayscale')">Grayscale</div>
                        <div class="filter-option" onclick="applyFilter('sepia')">Sepia</div>
                        <div class="filter-option" onclick="applyFilter('vintage')">Vintage</div>
                        <div class="filter-option" onclick="applyFilter('cool')">Cool</div>
                        <div class="filter-option" onclick="applyFilter('warm')">Warm</div>
                    </div>
                </div>
                <div class="camera-controls">
                    <button class="camera-btn secondary" onclick="hideAdvancedEditor()">Kembali</button>
                    <button class="camera-btn" onclick="saveEditedImage()">Simpan Perubahan</button>
                </div>
            </div>
        </div>
    </div>

    <!-- BARU: Halaman Profil Pengguna -->
    <div class="user-profile-page" id="user-profile-page" style="display:none;">
        <div class="page-header">
            <button class="back-btn" onclick="showHome()">←</button>
            <h1 class="page-title">Profil</h1>
        </div>

        <div class="profile-header">
            <img src="https://via.placeholder.com/80/927dfc/ffffff?text=U" alt="Foto Profil" id="user-profile-page-pic" class="profile-pic">
            <div class="profile-info">
                <div class="profile-name" id="user-profile-page-name">Nama Pengguna</div>
                <div class="profile-username" id="user-profile-page-username">@username</div>
                
                <div class="profile-stats">
                    <div class="stat-item">
                        <div class="stat-count" id="posts-count">0</div>
                        <div class="stat-label">Postingan</div>
                    </div>
                    <div class="stat-item">
                        <div class="stat-count" id="followers-count">0</div>
                        <div class="stat-label">Pengikut</div>
                    </div>
                    <div class="stat-item">
                        <div class="stat-count" id="following-count">0</div>
                        <div class="stat-label">Mengikuti</div>
                    </div>
                </div>
                
                <div class="profile-actions" id="profile-actions">
                    <!-- Tombol akan ditampilkan berdasarkan apakah ini profil sendiri atau profil orang lain -->
                </div>
            </div>
        </div>

        <div class="profile-tabs">
            <div class="profile-tab active" onclick="switchProfileTab('posts')">Postingan</div>
            <div class="profile-tab" onclick="switchProfileTab('tagged')">Tersimpan</div>
            <div class="profile-tab" onclick="switchProfileTab('liked')">Disukai</div>
        </div>

        <div class="profile-posts" id="profile-posts-container">
            <!-- Postingan pengguna akan ditampilkan di sini -->
        </div>
    </div>

    <!-- BARU: Halaman Chat -->
    <div class="chat-page" id="chat-page" style="display:none;">
        <div class="chat-header">
            <button class="back-btn" onclick="closeChat()">←</button>
            <img src="https://via.placeholder.com/80/927dfc/ffffff?text=U" alt="Foto Profil" id="chat-profile-pic" class="profile-pic">
            <div class="chat-info">
                <div class="chat-name" id="chat-profile-name">Nama Pengguna</div>
                <div class="chat-status" id="chat-status">Online</div>
            </div>
            <div class="chat-actions">
                <button class="chat-action-btn" onclick="toggleStickerPicker()">😊</button>
                <button class="chat-action-btn" onclick="toggleVideoCall()">📹</button>
                <button class="chat-action-btn" onclick="toggleVoiceCall()">📞</button>
            </div>
        </div>
        
        <div class="chat-content" id="chat-content">
            <!-- Pesan akan ditampilkan di sini -->
        </div>
        
        <div class="chat-input-container">
            <button class="chat-attach-btn" onclick="toggleMediaPicker()">📎</button>
            <textarea class="chat-input" id="chat-input" placeholder="Ketik pesan..." rows="1"></textarea>
            <button class="chat-send-btn" onclick="sendMessage()">➤</button>
        </div>
        
        <div class="sticker-picker" id="sticker-picker">
            <div class="sticker-category">
                <div class="sticker-category-title">Emoji Lucu</div>
                <div class="sticker-grid">
                    <div class="sticker" onclick="sendSticker('😊')">😊</div>
                    <div class="sticker" onclick="sendSticker('😂')">😂</div>
                    <div class="sticker" onclick="sendSticker('🥰')">🥰</div>
                    <div class="sticker" onclick="sendSticker('😍')">😍</div>
                    <div class="sticker" onclick="sendSticker('🤩')">🤩</div>
                    <div class="sticker" onclick="sendSticker('😎')">😎</div>
                    <div class="sticker" onclick="sendSticker('🥳')">🥳</div>
                    <div class="sticker" onclick="sendSticker('😋')">😋</div>
                </div>
            </div>
            <div class="sticker-category">
                <div class="sticker-category-title">Hewan</div>
                <div class="sticker-grid">
                    <div class="sticker" onclick="sendSticker('🐶')">🐶</div>
                    <div class="sticker" onclick="sendSticker('🐱')">🐱</div>
                    <div class="sticker" onclick="sendSticker('🐭')">🐭</div>
                    <div class="sticker" onclick="sendSticker('🐹')">🐹</div>
                    <div class="sticker" onclick="sendSticker('🐰')">🐰</div>
                    <div class="sticker" onclick="sendSticker('🦊')">🦊</div>
                    <div class="sticker" onclick="sendSticker('🐻')">🐻</div>
                    <div class="sticker" onclick="sendSticker('🐼')">🐼</div>
                </div>
            </div>
            <div class="sticker-category">
                <div class="sticker-category-title">Makanan</div>
                <div class="sticker-grid">
                    <div class="sticker" onclick="sendSticker('🍕')">🍕</div>
                    <div class="sticker" onclick="sendSticker('🍔')">🍔</div>
                    <div class="sticker" onclick="sendSticker('🍟')">🍟</div>
                    <div class="sticker" onclick="sendSticker('🌭')">🌭</div>
                    <div class="sticker" onclick="sendSticker('🍿')">🍿</div>
                    <div class="sticker" onclick="sendSticker('🧁')">🧁</div>
                    <div class="sticker" onclick="sendSticker('🍩')">🍩</div>
                    <div class="sticker" onclick="sendSticker('🍪')">🍪</div>
                </div>
            </div>
        </div>
        
        <div class="media-preview" id="media-preview">
            <div class="media-preview-content" id="media-preview-content">
                <!-- Preview media akan ditampilkan di sini -->
            </div>
            <div class="media-preview-actions">
                <button class="camera-btn secondary" onclick="cancelMedia()">Batal</button>
                <button class="camera-btn" onclick="sendMedia()">Kirim</button>
            </div>
        </div>
    </div>

    <!-- BARU: Halaman Pencarian -->
    <div class="search-page" id="search-page" style="display:none;">
        <div class="search-header">
            <button class="back-btn" onclick="closeSearch()">←</button>
            <div class="search-input-container">
                <input type="text" class="search-input" id="search-input" placeholder="Cari video, akun, atau topik..." autofocus>
                <button class="search-clear" id="search-clear" style="display:none;" onclick="clearSearch()">✕</button>
            </div>
        </div>
        
        <div class="search-tabs">
            <div class="search-tab active" onclick="switchSearchTab('all')">Semua</div>
            <div class="search-tab" onclick="switchSearchTab('accounts')">Akun</div>
            <div class="search-tab" onclick="switchSearchTab('videos')">Video</div>
            <div class="search-tab" onclick="switchSearchTab('live')">Live</div>
        </div>
        
        <div class="search-content" id="search-content">
            <!-- Hasil pencarian akan ditampilkan di sini -->
            <div id="search-results-container">
                <!-- Konten default sebelum pencarian -->
                <div class="search-section">
                    <div class="search-section-title">Pencarian Terpopuler</div>
                    <div class="search-results-grid">
                        <div class="search-result-item" onclick="searchFor('youtube')">
                            <img src="https://via.placeholder.com/150/ff6b6b/ffffff?text=YT" alt="YouTube" class="search-result-media">
                            <div class="search-result-info">
                                <div class="search-result-name">YouTube</div>
                                <div class="search-result-stats">
                                    <span>1.2M video</span>
                                </div>
                            </div>
                        </div>
                        <div class="search-result-item" onclick="searchFor('tiktok')">
                            <img src="https://via.placeholder.com/150/74d3ff/ffffff?text=TT" alt="TikTok" class="search-result-media">
                            <div class="search-result-info">
                                <div class="search-result-name">TikTok</div>
                                <div class="search-result-stats">
                                    <span>850K video</span>
                                </div>
                            </div>
                        </div>
                        <div class="search-result-item" onclick="searchFor('instagram')">
                            <img src="https://via.placeholder.com/150/ff74d9/ffffff?text=IG" alt="Instagram" class="search-result-media">
                            <div class="search-result-info">
                                <div class="search-result-name">Instagram</div>
                                <div class="search-result-stats">
                                    <span>980K video</span>
                                </div>
                            </div>
                        </div>
                        <div class="search-result-item" onclick="searchFor('gaming')">
                            <img src="https://via.placeholder.com/150/74ff98/ffffff?text=GM" alt="Gaming" class="search-result-media">
                            <div class="search-result-info">
                                <div class="search-result-name">Gaming</div>
                                <div class="search-result-stats">
                                    <span>650K video</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="search-section">
                    <div class="search-section-title">Akun Populer</div>
                    <div class="user-result-item" onclick="showOtherUserProfile(1)">
                        <img src="https://via.placeholder.com/50/ff6b6b/ffffff?text=AR" alt="Ahmad Rizki" class="user-result-avatar">
                        <div class="user-result-info">
                            <div class="user-result-name">Ahmad Rizki</div>
                            <div class="user-result-username">@ahmadrizki</div>
                            <div class="user-result-bio">Content Creator & Traveler</div>
                        </div>
                        <button class="user-result-follow-btn">Follow</button>
                    </div>
                    <div class="user-result-item" onclick="showOtherUserProfile(2)">
                        <img src="https://via.placeholder.com/50/ffe474/000000?text=SD" alt="Sari Dewi" class="user-result-avatar">
                        <div class="user-result-info">
                            <div class="user-result-name">Sari Dewi</div>
                            <div class="user-result-username">@saridewi</div>
                            <div class="user-result-bio">Beauty & Lifestyle</div>
                        </div>
                        <button class="user-result-follow-btn">Follow</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        // Kunci localStorage untuk data pengguna dan settings
        const USER_STORAGE_KEY = 'social_app_user';
        const SETTINGS_STORAGE_KEY = 'social_app_settings';
        const POSTS_STORAGE_KEY = 'social_app_posts';
        const USERS_STORAGE_KEY = 'social_app_users'; // BARU: Untuk menyimpan semua pengguna
        const RESET_TOKENS_KEY = 'social_app_reset_tokens'; // BARU: Untuk menyimpan token reset password
        const CHATS_STORAGE_KEY = 'social_app_chats'; // BARU: Untuk menyimpan data chat
        const FRIENDS_STORAGE_KEY = 'social_app_friends'; // BARU: Untuk menyimpan daftar teman
        const FOLLOWERS_STORAGE_KEY = 'social_app_followers'; // BARU: Untuk menyimpan data followers
        const SEARCH_HISTORY_KEY = 'social_app_search_history'; // BARU: Untuk menyimpan riwayat pencarian
        const DEFAULT_PROFILE_IMG = 'https://via.placeholder.com/80/927dfc/ffffff?text=U';
        
        // Data contoh pengguna untuk fitur pencarian teman
        const sampleUsers = [
            { id: 1, name: "Ahmad Rizki", username: "@ahmadrizki", avatar: "https://via.placeholder.com/40/ff6b6b/ffffff?text=AR", online: true, bio: "Content Creator & Traveler", followers: 12500, following: 350 },
            { id: 2, name: "Sari Dewi", username: "@saridewi", avatar: "https://via.placeholder.com/40/ffe474/000000?text=SD", online: false, bio: "Beauty & Lifestyle", followers: 8900, following: 210 },
            { id: 3, name: "Budi Santoso", username: "@budisantoso", avatar: "https://via.placeholder.com/40/74ff98/000000?text=BS", online: true, bio: "Gamer & Streamer", followers: 15600, following: 420 },
            { id: 4, name: "Maya Sari", username: "@mayasari", avatar: "https://via.placeholder.com/40/74d3ff/000000?text=MS", online: true, bio: "Food & Travel Vlogger", followers: 21000, following: 580 },
            { id: 5, name: "Rizky Pratama", username: "@rizkypratama", avatar: "https://via.placeholder.com/40/ff74d9/000000?text=RP", online: false, bio: "Tech Reviewer", followers: 17800, following: 320 }
        ];
        
        // Data contoh untuk konten video
        const sampleVideos = [
            { id: 1, title: "Review Smartphone Terbaru 2023", user: "Rizky Pratama", username: "@rizkypratama", avatar: "https://via.placeholder.com/40/ff74d9/000000?text=RP", thumbnail: "https://via.placeholder.com/150/ff74d9/ffffff?text=Tech", views: "125K", likes: "8.2K", duration: "12:45" },
            { id: 2, title: "Tutorial Makeup Natural untuk Pemula", user: "Sari Dewi", username: "@saridewi", avatar: "https://via.placeholder.com/40/ffe474/000000?text=SD", thumbnail: "https://via.placeholder.com/150/ffe474/000000?text=Beauty", views: "89K", likes: "5.7K", duration: "8:32" },
            { id: 3, title: "Gameplay Mobile Legends Epic Comeback", user: "Budi Santoso", username: "@budisantoso", avatar: "https://via.placeholder.com/40/74ff98/000000?text=BS", thumbnail: "https://via.placeholder.com/150/74ff98/000000?text=Gaming", views: "156K", likes: "12.3K", duration: "15:20" },
            { id: 4, title: "Mukbang Makanan Pedas Level 10", user: "Maya Sari", username: "@mayasari", avatar: "https://via.placeholder.com/40/74d3ff/000000?text=MS", thumbnail: "https://via.placeholder.com/150/74d3ff/ffffff?text=Food", views: "210K", likes: "15.8K", duration: "22:15" },
            { id: 5, title: "Vlog Liburan ke Bali Part 1", user: "Ahmad Rizki", username: "@ahmadrizki", avatar: "https://via.placeholder.com/40/ff6b6b/ffffff?text=AR", thumbnail: "https://via.placeholder.com/150/ff6b6b/ffffff?text=Travel", views: "178K", likes: "11.2K", duration: "18:40" }
        ];
        
        // Data contoh untuk live streaming
        const sampleLiveStreams = [
            { id: 1, title: "LIVE: Q&A Seputar Teknologi", user: "Rizky Pratama", username: "@rizkypratama", avatar: "https://via.placeholder.com/40/ff74d9/000000?text=RP", thumbnail: "https://via.placeholder.com/150/ff74d9/ffffff?text=LIVE", viewers: "1.2K", category: "Teknologi" },
            { id: 2, title: "LIVE: Tutorial Makeup Hari Ini", user: "Sari Dewi", username: "@saridewi", avatar: "https://via.placeholder.com/40/ffe474/000000?text=SD", thumbnail: "https://via.placeholder.com/150/ffe474/000000?text=LIVE", viewers: "890", category: "Beauty" },
            { id: 3, title: "LIVE: Ranked Game Mobile Legends", user: "Budi Santoso", username: "@budisantoso", avatar: "https://via.placeholder.com/40/74ff98/000000?text=BS", thumbnail: "https://via.placeholder.com/150/74ff98/000000?text=LIVE", viewers: "2.5K", category: "Gaming" }
        ];
        
        // Coba muat data pengguna dari localStorage saat startup
        let currentUser = loadUserData(); 
        let uploadedFileUrl = currentUser.img || '';
        let isLightMode = false;

        // PERUBAHAN: Load settings dan posts dari localStorage
        let appSettings = loadSettings();
        let posts = loadPosts();
        let allUsers = loadAllUsers(); // BARU: Load semua pengguna
        let resetTokens = loadResetTokens(); // BARU: Load token reset password
        let chats = loadChats(); // BARU: Load data chat
        let friends = loadFriends(); // BARU: Load daftar teman
        let followers = loadFollowers(); // BARU: Load data followers
        let searchHistory = loadSearchHistory(); // BARU: Load riwayat pencarian

        // BARU: Fungsi untuk memuat data followers
        function loadFollowers() {
            const storedFollowers = localStorage.getItem(FOLLOWERS_STORAGE_KEY);
            return storedFollowers ? JSON.parse(storedFollowers) : {};
        }

        // BARU: Fungsi untuk menyimpan data followers
        function saveFollowers() {
            localStorage.setItem(FOLLOWERS_STORAGE_KEY, JSON.stringify(followers));
        }

        // BARU: Fungsi untuk memuat riwayat pencarian
        function loadSearchHistory() {
            const storedHistory = localStorage.getItem(SEARCH_HISTORY_KEY);
            return storedHistory ? JSON.parse(storedHistory) : [];
        }

        // BARU: Fungsi untuk menyimpan riwayat pencarian
        function saveSearchHistory() {
            localStorage.setItem(SEARCH_HISTORY_KEY, JSON.stringify(searchHistory));
        }

        // BARU: Fungsi untuk menambahkan pencarian ke riwayat
        function addToSearchHistory(query) {
            // Hapus query jika sudah ada
            searchHistory = searchHistory.filter(item => item !== query);
            // Tambahkan ke awal array
            searchHistory.unshift(query);
            // Batasi riwayat hingga 10 item
            if (searchHistory.length > 10) {
                searchHistory = searchHistory.slice(0, 10);
            }
            saveSearchHistory();
        }

        // BARU: Fungsi untuk memuat daftar teman
        function loadFriends() {
            const storedFriends = localStorage.getItem(FRIENDS_STORAGE_KEY);
            return storedFriends ? JSON.parse(storedFriends) : [];
        }

        // BARU: Fungsi untuk menyimpan daftar teman
        function saveFriends() {
            localStorage.setItem(FRIENDS_STORAGE_KEY, JSON.stringify(friends));
        }

        // BARU: Variabel untuk fitur upload
        let currentMediaType = ''; // 'photo', 'video', 'text'
        let mediaStream = null;
        let mediaRecorder = null;
        let recordedChunks = [];
        let isRecording = false;
        let currentMedia = null;
        let currentMediaRotation = 0;
        let currentMediaFilter = 'normal';
        let originalMedia = null; // Untuk menyimpan media asli sebelum diedit

        // BARU: Variabel untuk editor gambar
        let currentBrightness = 100;
        let currentContrast = 100;
        let currentSaturation = 100;

        // BARU: Variabel untuk reset password
        let resetEmail = '';

        // BARU: Variabel untuk halaman profil
        let currentProfileTab = 'posts';
        let currentProfileUser = null; // Untuk menyimpan data profil yang sedang dilihat

        // BARU: Variabel untuk halaman chat
        let currentChatUser = null; // Untuk menyimpan data user yang sedang di-chat
        let currentChatId = null; // Untuk menyimpan ID chat yang sedang aktif

        // BARU: Variabel untuk halaman pencarian
        let currentSearchTab = 'all'; // Tab pencarian aktif
        let currentSearchQuery = ''; // Query pencarian saat ini

        // BARU: Variabel untuk status koneksi
        let isOnline = true;

        // Fungsi untuk memuat data pengguna dari localStorage
        function loadUserData() {
            const storedData = localStorage.getItem(USER_STORAGE_KEY);
            return storedData ? JSON.parse(storedData) : {};
        }

        // Fungsi untuk menyimpan data pengguna ke localStorage
        function saveUserData(userData) {
            localStorage.setItem(USER_STORAGE_KEY, JSON.stringify(userData));
        }

        // BARU: Fungsi untuk memuat semua pengguna
        function loadAllUsers() {
            const storedUsers = localStorage.getItem(USERS_STORAGE_KEY);
            return storedUsers ? JSON.parse(storedUsers) : [];
        }

        // BARU: Fungsi untuk menyimpan semua pengguna
        function saveAllUsers() {
            localStorage.setItem(USERS_STORAGE_KEY, JSON.stringify(allUsers));
        }

        // BARU: Fungsi untuk memuat token reset password
        function loadResetTokens() {
            const storedTokens = localStorage.getItem(RESET_TOKENS_KEY);
            return storedTokens ? JSON.parse(storedTokens) : {};
        }

        // BARU: Fungsi untuk menyimpan token reset password
        function saveResetTokens() {
            localStorage.setItem(RESET_TOKENS_KEY, JSON.stringify(resetTokens));
        }

        // BARU: Fungsi untuk memuat data chat
        function loadChats() {
            const storedChats = localStorage.getItem(CHATS_STORAGE_KEY);
            return storedChats ? JSON.parse(storedChats) : {};
        }

        // BARU: Fungsi untuk menyimpan data chat
        function saveChats() {
            localStorage.setItem(CHATS_STORAGE_KEY, JSON.stringify(chats));
        }

        // BARU: Fungsi untuk memuat postingan
        function loadPosts() {
            const storedPosts = localStorage.getItem(POSTS_STORAGE_KEY);
            return storedPosts ? JSON.parse(storedPosts) : [];
        }

        // BARU: Fungsi untuk menyimpan postingan
        function savePosts() {
            localStorage.setItem(POSTS_STORAGE_KEY, JSON.stringify(posts));
        }

        // PERUBAHAN: Fungsi untuk memuat settings
        function loadSettings() {
            const storedSettings = localStorage.getItem(SETTINGS_STORAGE_KEY);
            if (storedSettings) {
                return JSON.parse(storedSettings);
            } else {
                // Default settings
                return {
                    darkMode: true,
                    notifications: {
                        posts: true,
                        messages: true,
                        friends: true
                    },
                    privacy: {
                        publicProfile: true,
                        onlineStatus: true,
                        directMessages: true
                    },
                    language: 'id'
                };
            }
        }

        // PERUBAHAN: Fungsi untuk menyimpan settings
        function saveSettings() {
            localStorage.setItem(SETTINGS_STORAGE_KEY, JSON.stringify(appSettings));
        }

        // BARU: Fungsi untuk menyembunyikan semua layar
        function hideAllScreens() {
            document.getElementById('welcome-screen').style.display = 'none';
            document.getElementById('auth-screen').style.display = 'none';
            document.getElementById('login-screen').style.display = 'none';
            document.getElementById('forgot-screen').style.display = 'none';
            document.getElementById('reset-password-screen').style.display = 'none';
            document.getElementById('profile-setup-screen').style.display = 'none';
            document.getElementById('home-screen').style.display = 'none';
            document.getElementById('profile-page').style.display = 'none';
            document.getElementById('settings-page').style.display = 'none';
            document.getElementById('shorts-page').style.display = 'none';
            document.getElementById('upload-page').style.display = 'none';
            document.getElementById('user-profile-page').style.display = 'none';
            document.getElementById('chat-page').style.display = 'none';
            document.getElementById('search-page').style.display = 'none';
            document.getElementById('error-screen').style.display = 'none';
            
            // Atur ulang centering body untuk auth screens
            document.body.style.display = 'flex';
            document.body.style.alignItems = 'center';
            document.body.style.justifyContent = 'center';
            document.body.style.padding = '0';
        }

        // BARU: Fungsi untuk menampilkan halaman awal
        function showWelcomeScreen() {
            hideAllScreens();
            document.getElementById('welcome-screen').style.display = 'block';
        }

        // BARU: Fungsi untuk menampilkan layar reset password
        function showResetPassword() {
            hideAllScreens();
            document.getElementById('reset-password-screen').style.display = 'block';
        }

        // BARU: Fungsi untuk menampilkan halaman error koneksi
        function showErrorScreen() {
            hideAllScreens();
            document.getElementById('error-screen').style.display = 'block';
        }

        // BARU: Fungsi untuk memeriksa koneksi internet
        function checkConnection() {
            isOnline = navigator.onLine;
            
            if (isOnline) {
                // Jika koneksi tersedia, kembali ke halaman sebelumnya
                if (currentUser && currentUser.email) {
                    showHome();
                } else {
                    showWelcomeScreen();
                }
            } else {
                // Jika masih offline, perbarui status
                document.getElementById('connection-status').textContent = 'NON KONEKSI';
                alert('Masih tidak dapat terhubung ke internet. Periksa koneksi Anda.');
            }
        }

        // BARU: Event listener untuk perubahan status koneksi
        window.addEventListener('online', function() {
            isOnline = true;
            // Jika sedang di halaman error, sembunyikan
            if (document.getElementById('error-screen').style.display === 'block') {
                checkConnection();
            }
        });

        window.addEventListener('offline', function() {
            isOnline = false;
            // Tampilkan halaman error jika sedang di aplikasi
            if (document.getElementById('welcome-screen').style.display !== 'block' && 
                document.getElementById('auth-screen').style.display !== 'block' &&
                document.getElementById('login-screen').style.display !== 'block' &&
                document.getElementById('forgot-screen').style.display !== 'block' &&
                document.getElementById('reset-password-screen').style.display !== 'block' &&
                document.getElementById('profile-setup-screen').style.display !== 'block') {
                showErrorScreen();
            }
        });

        // Fungsi untuk menampilkan layar otentikasi tertentu
        function showRegister() { 
            if (!isOnline) {
                showErrorScreen();
                return;
            }
            hideAllScreens(); 
            document.getElementById('auth-screen').style.display = 'block'; 
        }
        
        function showLogin() { 
            if (!isOnline) {
                showErrorScreen();
                return;
            }
            hideAllScreens(); 
            document.getElementById('login-screen').style.display = 'block'; 
        }
        
        function showForgotPassword() { 
            if (!isOnline) {
                showErrorScreen();
                return;
            }
            hideAllScreens(); 
            document.getElementById('forgot-screen').style.display = 'block'; 
        }
        
        // Fungsi untuk menampilkan layar Setup Profil
        function showProfileSetup() {
            if (!isOnline) {
                showErrorScreen();
                return;
            }
             hideAllScreens();
             document.getElementById('profile-setup-screen').style.display = 'block';
             document.getElementById('upload-warning').style.display = 'none';
        }

        // PERUBAHAN: Fungsi untuk menampilkan halaman profil
        function showProfilePage() {
            if (!isOnline) {
                showErrorScreen();
                return;
            }
            hideAllScreens();
            document.getElementById('profile-page').style.display = 'block';
            
            // Update data di halaman profil
            document.getElementById('profile-page-name').textContent = currentUser.name;
            document.getElementById('profile-page-pic').src = currentUser.img;
            document.getElementById('edit-profile-name').value = currentUser.name;
            
            // Sensor email untuk keamanan
            if (currentUser.email) {
                const emailParts = currentUser.email.split('@');
                const username = emailParts[0].substring(0, 2) + '••••••' + emailParts[0].substring(emailParts[0].length - 2);
                const domain = '•••••.com';
                document.getElementById('profile-page-email').textContent = username + '@' + domain;
            }
        }

        // PERUBAHAN: Fungsi untuk menampilkan halaman setting
        function showSettingsPage() {
            if (!isOnline) {
                showErrorScreen();
                return;
            }
            hideAllScreens();
            document.getElementById('settings-page').style.display = 'block';
            
            // Update semua toggle di settings
            updateSettingsUI();
        }

        // BARU: Fungsi untuk menampilkan halaman profil pengguna
        function showUserProfilePage() {
            if (!isOnline) {
                showErrorScreen();
                return;
            }
            hideAllScreens();
            document.getElementById('user-profile-page').style.display = 'block';
            
            // Set currentProfileUser ke currentUser (profil sendiri)
            currentProfileUser = currentUser;
            
            // Update data profil
            updateProfilePage();
            
            // Update navigasi bawah
            updateBottomNav('profile');
        }

        // BARU: Fungsi untuk menampilkan profil pengguna lain
        function showOtherUserProfile(userId) {
            if (!isOnline) {
                showErrorScreen();
                return;
            }
            hideAllScreens();
            document.getElementById('user-profile-page').style.display = 'block';
            
            // Cari data user berdasarkan ID
            const user = sampleUsers.find(u => u.id === userId) || allUsers.find(u => u.id === userId);
            if (user) {
                currentProfileUser = user;
                updateProfilePage();
            }
            
            // Update navigasi bawah
            updateBottomNav('profile');
        }

        // BARU: Fungsi untuk memperbarui halaman profil
        function updateProfilePage() {
            if (!currentProfileUser) return;
            
            document.getElementById('user-profile-page-name').textContent = currentProfileUser.name;
            document.getElementById('user-profile-page-pic').src = currentProfileUser.avatar || currentProfileUser.img || DEFAULT_PROFILE_IMG;
            document.getElementById('user-profile-page-username').textContent = '@' + (currentProfileUser.username || currentProfileUser.name.toLowerCase().replace(/\s+/g, ''));
            
            // Hitung statistik
            const userPosts = posts.filter(post => post.userId === currentProfileUser.email || post.userId === currentProfileUser.id);
            document.getElementById('posts-count').textContent = userPosts.length;
            
            // Hitung followers dan following
            const userFollowers = followers[currentProfileUser.email] || [];
            const userFollowing = Object.keys(followers).filter(email => 
                followers[email] && followers[email].includes(currentProfileUser.email)
            );
            
            document.getElementById('followers-count').textContent = userFollowers.length;
            document.getElementById('following-count').textContent = userFollowing.length;
            
            // PERUBAHAN: Update tombol berdasarkan apakah ini profil sendiri atau profil orang lain
            updateProfileActions();
            
            // Tampilkan postingan
            displayUserPosts();
        }

        // BARU: Fungsi untuk memperbarui tombol aksi di profil
        function updateProfileActions() {
            const profileActions = document.getElementById('profile-actions');
            
            // Cek apakah ini profil sendiri
            const isOwnProfile = currentProfileUser.email === currentUser.email || currentProfileUser.id === currentUser.id;
            
            if (isOwnProfile) {
                // Ini adalah profil sendiri, tampilkan tombol edit
                profileActions.innerHTML = `
                    <div class="action-button message-button" onclick="showEditProfile()">
                        Edit Profil
                    </div>
                `;
            } else {
                // Ini adalah profil orang lain, tampilkan tombol Follow dan Kirim Pesan
                profileActions.innerHTML = `
                    <div class="action-button follow-button" id="follow-button" onclick="toggleFollow()">Follow</div>
                    <div class="action-button message-button" onclick="openChat()">Kirim Pesan</div>
                `;
                
                // Periksa status follow
                const followButton = document.getElementById('follow-button');
                const isFollowing = followers[currentUser.email] && 
                    followers[currentUser.email].includes(currentProfileUser.email);
                
                if (isFollowing) {
                    followButton.textContent = 'Mengikuti';
                    followButton.style.background = 'rgba(146, 125, 252, 0.2)';
                    followButton.style.color = 'var(--accent-purple)';
                    followButton.style.border = '1px solid var(--accent-purple)';
                } else {
                    followButton.textContent = 'Follow';
                    followButton.style.background = 'var(--accent-purple)';
                    followButton.style.color = 'white';
                    followButton.style.border = 'none';
                }
            }
        }

        // BARU: Fungsi untuk toggle follow
        function toggleFollow() {
            if (!currentProfileUser) return;
            
            const followButton = document.getElementById('follow-button');
            const currentUserEmail = currentUser.email;
            const targetUserEmail = currentProfileUser.email;
            
            // Inisialisasi array followers untuk current user jika belum ada
            if (!followers[currentUserEmail]) {
                followers[currentUserEmail] = [];
            }
            
            // Cek apakah sudah mengikuti
            const isFollowing = followers[currentUserEmail].includes(targetUserEmail);
            
            if (!isFollowing) {
                // Follow user
                followers[currentUserEmail].push(targetUserEmail);
                followButton.textContent = 'Mengikuti';
                followButton.style.background = 'rgba(146, 125, 252, 0.2)';
                followButton.style.color = 'var(--accent-purple)';
                followButton.style.border = '1px solid var(--accent-purple)';
                
                // Update jumlah followers di tampilan
                const userFollowers = followers[targetUserEmail] || [];
                document.getElementById('followers-count').textContent = userFollowers.length + 1;
                
                alert('Anda sekarang mengikuti ' + currentProfileUser.name);
            } else {
                // Unfollow user
                followers[currentUserEmail] = followers[currentUserEmail].filter(email => email !== targetUserEmail);
                followButton.textContent = 'Follow';
                followButton.style.background = 'var(--accent-purple)';
                followButton.style.color = 'white';
                followButton.style.border = 'none';
                
                // Update jumlah followers di tampilan
                const userFollowers = followers[targetUserEmail] || [];
                document.getElementById('followers-count').textContent = Math.max(0, userFollowers.length - 1);
                
                alert('Anda berhenti mengikuti ' + currentProfileUser.name);
            }
            
            saveFollowers();
        }

        // BARU: Fungsi untuk menampilkan postingan di halaman profil
        function displayUserPosts() {
            const postsContainer = document.getElementById('profile-posts-container');
            const userPosts = posts.filter(post => 
                post.userId === currentProfileUser.email || post.userId === currentProfileUser.id
            );
            
            if (userPosts.length === 0) {
                postsContainer.innerHTML = `
                    <div class="no-posts">
                        <p>Belum ada postingan</p>
                        ${currentProfileUser.email === currentUser.email || currentProfileUser.id === currentUser.id ? 
                            '<button class="camera-btn" onclick="showUploadPage()" style="margin-top: 15px;">Buat Postingan Pertama</button>' : 
                            ''}
                    </div>
                `;
                return;
            }
            
            let postsHTML = '';
            
            userPosts.forEach(post => {
                if (post.type === 'photo') {
                    postsHTML += `
                        <div class="profile-post" onclick="openPost(${post.id})">
                            <img src="${post.media}" alt="Postingan gambar">
                        </div>
                    `;
                } else if (post.type === 'video') {
                    postsHTML += `
                        <div class="profile-post" onclick="openPost(${post.id})">
                            <video src="${post.media}" muted></video>
                        </div>
                    `;
                } else if (post.type === 'text') {
                    postsHTML += `
                        <div class="profile-post profile-post-text" onclick="openPost(${post.id})">
                            ${post.description || post.media.substring(0, 100) + '...'}
                        </div>
                    `;
                }
            });
            
            postsContainer.innerHTML = postsHTML;
        }

        // BARU: Fungsi untuk membuka postingan
        function openPost(postId) {
            // Di sini bisa ditambahkan logika untuk membuka postingan dalam tampilan penuh
            alert('Membuka postingan dengan ID: ' + postId);
        }

        // BARU: Fungsi untuk membuka chat
        function openChat() {
            if (!currentProfileUser) return;
            
            // Set currentChatUser ke user yang dipilih
            currentChatUser = currentProfileUser;
            
            // Generate chat ID
            currentChatId = [currentUser.email, currentChatUser.email || currentChatUser.id].sort().join('_');
            
            // Jika chat belum ada, buat chat baru
            if (!chats[currentChatId]) {
                chats[currentChatId] = {
                    participants: [currentUser.email, currentChatUser.email || currentChatUser.id],
                    messages: []
                };
                saveChats();
            }
            
            // Tampilkan halaman chat
            showChatPage();
        }

        // BARU: Fungsi untuk menampilkan halaman chat
        function showChatPage() {
            if (!isOnline) {
                showErrorScreen();
                return;
            }
            hideAllScreens();
            document.getElementById('chat-page').style.display = 'flex';
            
            // Update header chat
            document.getElementById('chat-profile-name').textContent = currentChatUser.name;
            document.getElementById('chat-profile-pic').src = currentChatUser.avatar || currentChatUser.img || DEFAULT_PROFILE_IMG;
            document.getElementById('chat-status').textContent = 'Online';
            
            // Tampilkan pesan
            displayChatMessages();
            
            // Fokus ke input chat
            document.getElementById('chat-input').focus();
        }

        // BARU: Fungsi untuk menutup chat
        function closeChat() {
            // Kembali ke halaman profil
            if (currentProfileUser) {
                showUserProfilePage();
            } else {
                showHome();
            }
        }

        // BARU: Fungsi untuk menampilkan pesan di chat
        function displayChatMessages() {
            const chatContent = document.getElementById('chat-content');
            const chatData = chats[currentChatId];
            
            if (!chatData || chatData.messages.length === 0) {
                chatContent.innerHTML = '<p style="text-align: center; color: #a0a0a0; margin-top: 20px;">Belum ada pesan. Mulai percakapan!</p>';
                return;
            }
            
            let messagesHTML = '';
            
            chatData.messages.forEach(message => {
                const isSent = message.sender === currentUser.email;
                const messageTime = new Date(message.timestamp).toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' });
                
                let mediaHTML = '';
                if (message.media) {
                    if (message.mediaType === 'photo') {
                        mediaHTML = `<img src="${message.media}" class="message-media">`;
                    } else if (message.mediaType === 'video') {
                        mediaHTML = `<video src="${message.media}" controls class="message-media"></video>`;
                    } else if (message.mediaType === 'sticker') {
                        mediaHTML = `<div style="font-size: 40px; text-align: center;">${message.media}</div>`;
                    }
                }
                
                messagesHTML += `
                    <div class="message ${isSent ? 'sent' : 'received'}">
                        <div>${message.text || ''}</div>
                        ${mediaHTML}
                        <div class="message-time">${messageTime}</div>
                    </div>
                `;
            });
            
            chatContent.innerHTML = messagesHTML;
            
            // Scroll ke bawah
            chatContent.scrollTop = chatContent.scrollHeight;
        }

        // BARU: Fungsi untuk mengirim pesan
        function sendMessage() {
            const chatInput = document.getElementById('chat-input');
            const messageText = chatInput.value.trim();
            
            if (!messageText) return;
            
            // Tambahkan pesan ke chat
            const newMessage = {
                id: Date.now(),
                sender: currentUser.email,
                text: messageText,
                timestamp: new Date().toISOString()
            };
            
            chats[currentChatId].messages.push(newMessage);
            saveChats();
            
            // Reset input
            chatInput.value = '';
            
            // Tampilkan pesan baru
            displayChatMessages();
            
            // Simulasi balasan
            setTimeout(() => {
                const replies = [
                    "Hai! Apa kabar?",
                    "Terima kasih sudah mengirim pesan!",
                    "Saya sedang sibuk sekarang, nanti saya balas ya",
                    "Wah, menarik sekali!",
                    "Bisa cerita lebih detail?"
                ];
                
                const randomReply = replies[Math.floor(Math.random() * replies.length)];
                
                const replyMessage = {
                    id: Date.now(),
                    sender: currentChatUser.email || currentChatUser.id,
                    text: randomReply,
                    timestamp: new Date().toISOString()
                };
                
                chats[currentChatId].messages.push(replyMessage);
                saveChats();
                displayChatMessages();
            }, 1000 + Math.random() * 2000);
        }

        // BARU: Fungsi untuk mengirim stiker
        function sendSticker(sticker) {
            // Tambahkan pesan stiker ke chat
            const newMessage = {
                id: Date.now(),
                sender: currentUser.email,
                media: sticker,
                mediaType: 'sticker',
                timestamp: new Date().toISOString()
            };
            
            chats[currentChatId].messages.push(newMessage);
            saveChats();
            
            // Sembunyikan picker stiker
            document.getElementById('sticker-picker').classList.remove('active');
            
            // Tampilkan pesan baru
            displayChatMessages();
            
            // Simulasi balasan stiker
            setTimeout(() => {
                const stickerReplies = ['😊', '😂', '🥰', '🤗', '👍'];
                const randomSticker = stickerReplies[Math.floor(Math.random() * stickerReplies.length)];
                
                const replyMessage = {
                    id: Date.now(),
                    sender: currentChatUser.email || currentChatUser.id,
                    media: randomSticker,
                    mediaType: 'sticker',
                    timestamp: new Date().toISOString()
                };
                
                chats[currentChatId].messages.push(replyMessage);
                saveChats();
                displayChatMessages();
            }, 1000 + Math.random() * 2000);
        }

        // BARU: Fungsi untuk toggle sticker picker
        function toggleStickerPicker() {
            const stickerPicker = document.getElementById('sticker-picker');
            stickerPicker.classList.toggle('active');
            
            // Sembunyikan media picker jika terbuka
            document.getElementById('media-preview').classList.remove('active');
        }

        // BARU: Fungsi untuk toggle media picker
        function toggleMediaPicker() {
            // Buat input file tersembunyi
            const fileInput = document.createElement('input');
            fileInput.type = 'file';
            fileInput.accept = 'image/*,video/*';
            fileInput.style.display = 'none';
            
            fileInput.onchange = function(e) {
                const file = e.target.files[0];
                if (!file) return;
                
                const fileType = file.type.split('/')[0]; // 'image' atau 'video'
                const reader = new FileReader();
                
                reader.onload = function(event) {
                    const mediaPreview = document.getElementById('media-preview');
                    const mediaPreviewContent = document.getElementById('media-preview-content');
                    
                    mediaPreviewContent.innerHTML = '';
                    
                    if (fileType === 'image') {
                        const img = document.createElement('img');
                        img.src = event.target.result;
                        mediaPreviewContent.appendChild(img);
                    } else if (fileType === 'video') {
                        const video = document.createElement('video');
                        video.src = event.target.result;
                        video.controls = true;
                        mediaPreviewContent.appendChild(video);
                    }
                    
                    // Simpan media untuk dikirim
                    currentMedia = {
                        data: event.target.result,
                        type: fileType
                    };
                    
                    // Tampilkan preview
                    mediaPreview.classList.add('active');
                    
                    // Sembunyikan sticker picker jika terbuka
                    document.getElementById('sticker-picker').classList.remove('active');
                };
                
                if (fileType === 'image') {
                    reader.readAsDataURL(file);
                } else if (fileType === 'video') {
                    // Untuk video, kita gunakan URL.createObjectURL
                    currentMedia = {
                        data: URL.createObjectURL(file),
                        type: fileType
                    };
                    
                    const mediaPreview = document.getElementById('media-preview');
                    const mediaPreviewContent = document.getElementById('media-preview-content');
                    
                    mediaPreviewContent.innerHTML = '';
                    const video = document.createElement('video');
                    video.src = currentMedia.data;
                    video.controls = true;
                    mediaPreviewContent.appendChild(video);
                    
                    // Tampilkan preview
                    mediaPreview.classList.add('active');
                    
                    // Sembunyikan sticker picker jika terbuka
                    document.getElementById('sticker-picker').classList.remove('active');
                }
            };
            
            document.body.appendChild(fileInput);
            fileInput.click();
            document.body.removeChild(fileInput);
        }

        // BARU: Fungsi untuk membatalkan pengiriman media
        function cancelMedia() {
            document.getElementById('media-preview').classList.remove('active');
            currentMedia = null;
        }

        // BARU: Fungsi untuk mengirim media
        function sendMedia() {
            if (!currentMedia) return;
            
            // Tambahkan pesan media ke chat
            const newMessage = {
                id: Date.now(),
                sender: currentUser.email,
                media: currentMedia.data,
                mediaType: currentMedia.type,
                timestamp: new Date().toISOString()
            };
            
            chats[currentChatId].messages.push(newMessage);
            saveChats();
            
            // Sembunyikan preview
            document.getElementById('media-preview').classList.remove('active');
            
            // Reset currentMedia
            currentMedia = null;
            
            // Tampilkan pesan baru
            displayChatMessages();
            
            // Simulasi balasan
            setTimeout(() => {
                const replies = [
                    "Wah, keren!",
                    "Foto/video yang bagus!",
                    "Terima kasih sudah berbagi!",
                    "Ini di mana?",
                    "Keren banget!"
                ];
                
                const randomReply = replies[Math.floor(Math.random() * replies.length)];
                
                const replyMessage = {
                    id: Date.now(),
                    sender: currentChatUser.email || currentChatUser.id,
                    text: randomReply,
                    timestamp: new Date().toISOString()
                };
                
                chats[currentChatId].messages.push(replyMessage);
                saveChats();
                displayChatMessages();
            }, 1000 + Math.random() * 2000);
        }

        // BARU: Fungsi untuk toggle video call (simulasi)
        function toggleVideoCall() {
            alert('Fitur video call akan segera hadir!');
        }

        // BARU: Fungsi untuk toggle voice call (simulasi)
        function toggleVoiceCall() {
            alert('Fitur voice call akan segera hadir!');
        }

        // BARU: Fungsi untuk mengganti tab di profil
        function switchProfileTab(tab) {
            currentProfileTab = tab;
            
            // Update tampilan tab
            const tabs = document.querySelectorAll('.profile-tab');
            tabs.forEach(tabElement => {
                tabElement.classList.remove('active');
            });
            
            event.target.classList.add('active');
            
            // Tampilkan konten sesuai tab
            if (tab === 'posts') {
                displayUserPosts();
            } else if (tab === 'tagged') {
                document.getElementById('profile-posts-container').innerHTML = '<div class="no-posts"><p>Belum ada postingan yang disimpan</p></div>';
            } else if (tab === 'liked') {
                document.getElementById('profile-posts-container').innerHTML = '<div class="no-posts"><p>Belum ada postingan yang disukai</p></div>';
            }
        }

        // BARU: Fungsi untuk menampilkan halaman upload
        function showUploadPage() {
            if (!isOnline) {
                showErrorScreen();
                return;
            }
            hideAllScreens();
            document.getElementById('upload-page').style.display = 'flex';
            
            // Reset semua interface
            resetUploadInterfaces();
            
            // Update navigasi bawah
            updateBottomNav('upload');
        }

        // BARU: Fungsi untuk reset semua interface upload
        function resetUploadInterfaces() {
            document.getElementById('camera-container').style.display = 'none';
            document.getElementById('text-container').style.display = 'none';
            document.getElementById('gallery-container').style.display = 'none';
            document.getElementById('preview-container').style.display = 'none';
            document.getElementById('advanced-editor').style.display = 'none';
            
            // Hentikan kamera jika sedang aktif
            stopCamera();
        }

        // BARU: Fungsi untuk menampilkan interface kamera
        function showCameraInterface(type) {
            resetUploadInterfaces();
            currentMediaType = type;
            
            const cameraContainer = document.getElementById('camera-container');
            const captureBtn = document.getElementById('capture-btn');
            const recordBtn = document.getElementById('record-btn');
            
            cameraContainer.style.display = 'flex';
            
            if (type === 'photo') {
                captureBtn.style.display = 'block';
                recordBtn.style.display = 'none';
                captureBtn.textContent = 'Ambil Foto';
            } else if (type === 'video') {
                captureBtn.style.display = 'none';
                recordBtn.style.display = 'block';
                recordBtn.textContent = 'Mulai Rekam';
            }
            
            startCamera();
        }

        // BARU: Fungsi untuk menampilkan interface teks
        function showTextInterface() {
            resetUploadInterfaces();
            currentMediaType = 'text';
            document.getElementById('text-container').style.display = 'flex';
            document.getElementById('text-content').focus();
        }

        // BARU: Fungsi untuk menampilkan interface galeri
        function showGalleryInterface() {
            resetUploadInterfaces();
            document.getElementById('gallery-container').style.display = 'flex';
        }

        // BARU: Fungsi untuk memulai kamera
        async function startCamera() {
            try {
                const constraints = {
                    video: {
                        width: { ideal: 1280 },
                        height: { ideal: 720 }
                    },
                    audio: currentMediaType === 'video'
                };
                
                // Cek apakah browser mendukung getUserMedia
                if (navigator.mediaDevices && navigator.mediaDevices.getUserMedia) {
                    mediaStream = await navigator.mediaDevices.getUserMedia(constraints);
                    const videoElement = document.getElementById('camera-preview');
                    videoElement.srcObject = mediaStream;
                } else {
                    alert('Browser Anda tidak mendukung akses kamera. Silakan gunakan browser yang lebih baru.');
                }
            } catch (error) {
                console.error('Error accessing camera:', error);
                alert('Tidak dapat mengakses kamera. Pastikan Anda memberikan izin akses kamera.');
            }
        }

        // BARU: Fungsi untuk menghentikan kamera
        function stopCamera() {
            if (mediaStream) {
                mediaStream.getTracks().forEach(track => track.stop());
                mediaStream = null;
            }
            
            if (isRecording) {
                stopRecording();
            }
        }

        // BARU: Fungsi untuk mengganti kamera (depan/belakang)
        async function switchCamera() {
            if (!mediaStream) return;
            
            // Hentikan stream saat ini
            mediaStream.getTracks().forEach(track => track.stop());
            
            try {
                // Dapatkan semua perangkat media
                const devices = await navigator.mediaDevices.enumerateDevices();
                const videoDevices = devices.filter(device => device.kind === 'videoinput');
                
                if (videoDevices.length < 2) {
                    alert('Hanya satu kamera yang tersedia');
                    return;
                }
                
                // Tentukan kendala untuk kamera yang berbeda
                const currentTrack = mediaStream.getVideoTracks()[0];
                const currentFacingMode = currentTrack.getSettings().facingMode;
                const newFacingMode = currentFacingMode === 'user' ? 'environment' : 'user';
                
                const constraints = {
                    video: {
                        width: { ideal: 1280 },
                        height: { ideal: 720 },
                        facingMode: newFacingMode
                    },
                    audio: currentMediaType === 'video'
                };
                
                mediaStream = await navigator.mediaDevices.getUserMedia(constraints);
                const videoElement = document.getElementById('camera-preview');
                videoElement.srcObject = mediaStream;
            } catch (error) {
                console.error('Error switching camera:', error);
                alert('Tidak dapat mengganti kamera.');
            }
        }

        // BARU: Fungsi untuk mengambil foto
        function captureMedia() {
            if (currentMediaType === 'photo') {
                const video = document.getElementById('camera-preview');
                const canvas = document.getElementById('photo-canvas');
                const context = canvas.getContext('2d');
                
                canvas.width = video.videoWidth;
                canvas.height = video.videoHeight;
                context.drawImage(video, 0, 0, canvas.width, canvas.height);
                
                currentMedia = canvas.toDataURL('image/png');
                originalMedia = currentMedia; // Simpan media asli
                previewContent('photo');
            }
        }

        // BARU: Fungsi untuk memulai/menghentikan perekaman video
        function toggleRecording() {
            if (!isRecording) {
                startRecording();
            } else {
                stopRecording();
            }
        }

        // BARU: Fungsi untuk memulai perekaman
        function startRecording() {
            if (!mediaStream) return;
            
            recordedChunks = [];
            const options = { mimeType: 'video/webm; codecs=vp9' };
            
            try {
                // Cek apakah browser mendukung MediaRecorder
                if (window.MediaRecorder) {
                    mediaRecorder = new MediaRecorder(mediaStream, options);
                } else {
                    alert('Browser Anda tidak mendukung perekaman video. Silakan gunakan browser yang lebih baru.');
                    return;
                }
            } catch (e) {
                console.error('MediaRecorder error:', e);
                return;
            }
            
            mediaRecorder.ondataavailable = function(event) {
                if (event.data.size > 0) {
                    recordedChunks.push(event.data);
                }
            };
            
            mediaRecorder.onstop = function() {
                const blob = new Blob(recordedChunks, { type: 'video/webm' });
                currentMedia = URL.createObjectURL(blob);
                originalMedia = currentMedia; // Simpan media asli
                previewContent('video');
            };
            
            mediaRecorder.start();
            isRecording = true;
            
            document.getElementById('record-btn').textContent = 'Berhenti Rekam';
            document.getElementById('recording-indicator').style.display = 'flex';
        }

        // BARU: Fungsi untuk menghentikan perekaman
        function stopRecording() {
            if (mediaRecorder && isRecording) {
                mediaRecorder.stop();
                isRecording = false;
                
                document.getElementById('record-btn').textContent = 'Mulai Rekam';
                document.getElementById('recording-indicator').style.display = 'none';
            }
        }

        // BARU: Fungsi untuk menangani pilihan dari galeri
        function handleGallerySelection(files) {
            if (files.length === 0) return;
            
            const file = files[0];
            const fileType = file.type.split('/')[0]; // 'image' atau 'video'
            
            const reader = new FileReader();
            reader.onload = function(e) {
                if (fileType === 'image') {
                    currentMediaType = 'photo';
                    currentMedia = e.target.result;
                    originalMedia = currentMedia; // Simpan media asli
                } else if (fileType === 'video') {
                    currentMediaType = 'video';
                    currentMedia = e.target.result;
                    originalMedia = currentMedia; // Simpan media asli
                }
                
                previewContent(currentMediaType);
            };
            
            if (fileType === 'image') {
                reader.readAsDataURL(file);
            } else if (fileType === 'video') {
                // Untuk video, kita gunakan URL.createObjectURL
                currentMedia = URL.createObjectURL(file);
                originalMedia = currentMedia; // Simpan media asli
                previewContent('video');
            }
        }

        // BARU: Fungsi untuk format teks yang lebih lengkap
        function formatText(type) {
            const editor = document.getElementById('text-content');
            const selection = window.getSelection();
            if (selection.rangeCount === 0) return;
            
            const range = selection.getRangeAt(0);
            const selectedText = range.toString();
            
            let formattedText = '';
            let wrapperElement = null;
            
            switch(type) {
                case 'bold':
                    wrapperElement = document.createElement('b');
                    break;
                case 'italic':
                    wrapperElement = document.createElement('i');
                    break;
                case 'underline':
                    wrapperElement = document.createElement('u');
                    break;
                case 'heading1':
                    wrapperElement = document.createElement('h1');
                    wrapperElement.style.fontSize = '24px';
                    wrapperElement.style.fontWeight = 'bold';
                    wrapperElement.style.margin = '10px 0';
                    break;
                case 'heading2':
                    wrapperElement = document.createElement('h2');
                    wrapperElement.style.fontSize = '20px';
                    wrapperElement.style.fontWeight = 'bold';
                    wrapperElement.style.margin = '8px 0';
                    break;
            }
            
            if (wrapperElement) {
                wrapperElement.textContent = selectedText;
                range.deleteContents();
                range.insertNode(wrapperElement);
            }
            
            editor.focus();
        }

        // BARU: Fungsi untuk menambahkan emoji
        function addEmoji(emoji) {
            const editor = document.getElementById('text-content');
            const selection = window.getSelection();
            if (selection.rangeCount === 0) return;
            
            const range = selection.getRangeAt(0);
            const emojiNode = document.createTextNode(emoji);
            
            range.deleteContents();
            range.insertNode(emojiNode);
            
            // Pindahkan kursor setelah emoji
            range.setStartAfter(emojiNode);
            range.setEndAfter(emojiNode);
            selection.removeAllRanges();
            selection.addRange(range);
            
            editor.focus();
        }

        // BARU: Fungsi untuk preview konten sebelum upload
        function previewContent(type) {
            resetUploadInterfaces();
            document.getElementById('preview-container').style.display = 'flex';
            
            const previewMedia = document.getElementById('preview-media');
            previewMedia.innerHTML = '';
            
            // Reset rotasi dan filter
            currentMediaRotation = 0;
            currentMediaFilter = 'normal';
            currentBrightness = 100;
            currentContrast = 100;
            currentSaturation = 100;
            
            // Reset slider values
            document.getElementById('brightness-slider').value = 100;
            document.getElementById('contrast-slider').value = 100;
            document.getElementById('saturation-slider').value = 100;
            
            if (type === 'photo') {
                const img = document.createElement('img');
                img.src = currentMedia;
                img.id = 'preview-image';
                img.style.transform = `rotate(${currentMediaRotation}deg)`;
                img.style.filter = getCurrentFilter();
                previewMedia.appendChild(img);
                
                // Tampilkan kontrol edit untuk gambar
                document.getElementById('media-edit-controls').style.display = 'flex';
            } else if (type === 'video') {
                const video = document.createElement('video');
                video.src = currentMedia;
                video.controls = true;
                video.autoplay = true;
                video.muted = true;
                video.style.transform = `rotate(${currentMediaRotation}deg)`;
                video.style.filter = getCurrentFilter();
                previewMedia.appendChild(video);
                
                // Tampilkan kontrol edit untuk video
                document.getElementById('media-edit-controls').style.display = 'flex';
            } else if (type === 'text') {
                const textDiv = document.createElement('div');
                textDiv.className = 'preview-text-content';
                textDiv.innerHTML = document.getElementById('text-content').innerHTML;
                textDiv.style.padding = '20px';
                textDiv.style.background = 'var(--input-bg)';
                textDiv.style.borderRadius = '10px';
                textDiv.style.minHeight = '200px';
                previewMedia.appendChild(textDiv);
                
                // Sembunyikan kontrol edit untuk teks
                document.getElementById('media-edit-controls').style.display = 'none';
                
                // Simpan teks sebagai media
                currentMedia = document.getElementById('text-content').innerHTML;
            }
        }

        // BARU: Fungsi untuk mendapatkan filter saat ini
        function getCurrentFilter() {
            let filter = '';
            
            if (currentBrightness !== 100) {
                filter += `brightness(${currentBrightness}%) `;
            }
            
            if (currentContrast !== 100) {
                filter += `contrast(${currentContrast}%) `;
            }
            
            if (currentSaturation !== 100) {
                filter += `saturate(${currentSaturation}%) `;
            }
            
            if (currentMediaFilter !== 'normal') {
                if (currentMediaFilter === 'grayscale') {
                    filter += 'grayscale(100%) ';
                } else if (currentMediaFilter === 'sepia') {
                    filter += 'sepia(100%) ';
                } else if (currentMediaFilter === 'vintage') {
                    filter += 'sepia(70%) hue-rotate(-30deg) saturate(120%) ';
                } else if (currentMediaFilter === 'cool') {
                    filter += 'hue-rotate(180deg) saturate(120%) ';
                } else if (currentMediaFilter === 'warm') {
                    filter += 'hue-rotate(30deg) saturate(120%) ';
                }
            }
            
            return filter.trim() || 'none';
        }

        // BARU: Fungsi untuk menerapkan filter pada media
        function applyFilter(filter) {
            currentMediaFilter = filter;
            updateMediaAppearance();
        }

        // BARU: Fungsi untuk menyesuaikan kecerahan
        function adjustBrightness(value) {
            currentBrightness = value;
            updateMediaAppearance();
        }

        // BARU: Fungsi untuk menyesuaikan kontras
        function adjustContrast(value) {
            currentContrast = value;
            updateMediaAppearance();
        }

        // BARU: Fungsi untuk menyesuaikan saturasi
        function adjustSaturation(value) {
            currentSaturation = value;
            updateMediaAppearance();
        }

        // BARU: Fungsi untuk memperbarui tampilan media
        function updateMediaAppearance() {
            const mediaElement = document.querySelector('#preview-media img, #preview-media video');
            const editorImage = document.getElementById('editor-image');
            
            if (mediaElement) {
                mediaElement.style.filter = getCurrentFilter();
            }
            
            if (editorImage) {
                editorImage.style.filter = getCurrentFilter();
            }
        }

        // BARU: Fungsi untuk memutar media
        function rotateMedia() {
            currentMediaRotation = (currentMediaRotation + 90) % 360;
            const mediaElement = document.querySelector('#preview-media img, #preview-media video');
            
            if (mediaElement) {
                mediaElement.style.transform = `rotate(${currentMediaRotation}deg)`;
            }
        }

        // BARU: Fungsi untuk menampilkan editor advanced
        function showAdvancedEditor() {
            if (currentMediaType !== 'photo') {
                alert('Editor lanjutan hanya tersedia untuk gambar');
                return;
            }
            
            document.getElementById('preview-container').style.display = 'none';
            document.getElementById('advanced-editor').style.display = 'flex';
            
            const editorImage = document.getElementById('editor-image');
            editorImage.src = originalMedia; // Gunakan gambar asli
            editorImage.style.filter = getCurrentFilter();
        }

        // BARU: Fungsi untuk menyembunyikan editor advanced
        function hideAdvancedEditor() {
            document.getElementById('advanced-editor').style.display = 'none';
            document.getElementById('preview-container').style.display = 'flex';
        }

        // BARU: Fungsi untuk menyimpan gambar yang sudah diedit
        function saveEditedImage() {
            // Buat canvas untuk mengekspor gambar yang sudah diedit
            const canvas = document.createElement('canvas');
            const ctx = canvas.getContext('2d');
            const editorImage = document.getElementById('editor-image');
            
            canvas.width = editorImage.naturalWidth;
            canvas.height = editorImage.naturalHeight;
            
            // Terapkan filter ke canvas
            ctx.filter = getCurrentFilter();
            ctx.drawImage(editorImage, 0, 0, canvas.width, canvas.height);
            
            // Simpan sebagai media baru
            currentMedia = canvas.toDataURL('image/png');
            
            // Kembali ke preview
            hideAdvancedEditor();
            
            // Perbarui preview dengan gambar yang sudah diedit
            const previewImage = document.querySelector('#preview-media img');
            if (previewImage) {
                previewImage.src = currentMedia;
                previewImage.style.filter = getCurrentFilter();
            }
        }

        // BARU: Fungsi untuk mengunggah postingan
        function uploadPost() {
            const description = document.getElementById('post-description').value;
            
            if (!currentMedia && currentMediaType !== 'text') {
                alert('Tidak ada media untuk diunggah!');
                return;
            }
            
            // Buat objek postingan baru
            const newPost = {
                id: Date.now(),
                userId: currentUser.email,
                userName: currentUser.name,
                userAvatar: currentUser.img,
                type: currentMediaType,
                media: currentMedia,
                description: description,
                timestamp: new Date().toISOString(),
                likes: 0,
                comments: [],
                views: 0,
                shares: 0,
                liked: false
            };
            
            // Tambahkan ke daftar postingan
            posts.unshift(newPost);
            savePosts();
            
            // Tampilkan beranda
            showHome();
            
            // Tampilkan pesan sukses
            alert('Postingan berhasil diunggah!');
        }

        // BARU: Fungsi untuk memformat teks untuk ditampilkan
        function formatTextForDisplay(text) {
            // Format teks sederhana: bold, italic, underline
            return text
                .replace(/\*\*(.*?)\*\*/g, '<b>$1</b>')
                .replace(/\*(.*?)\*/g, '<i>$1</i>')
                .replace(/__(.*?)__/g, '<u>$1</u>')
                .replace(/\n/g, '<br>');
        }

        // BARU: Fungsi untuk menampilkan postingan di beranda
        function displayPosts() {
            const postsContainer = document.getElementById('posts-container');
            
            if (posts.length === 0) {
                postsContainer.innerHTML = `
                    <div class="no-posts-message">
                        <p>Belum ada postingan. Jadilah yang pertama membuat konten!</p>
                        <button class="camera-btn" onclick="showUploadPage()" style="margin-top: 15px;">Buat Postingan</button>
                    </div>
                `;
                return;
            }
            
            let postsHTML = '';
            
            posts.forEach(post => {
                let mediaHTML = '';
                
                if (post.type === 'photo') {
                    mediaHTML = `<img src="${post.media}" alt="Postingan gambar">`;
                } else if (post.type === 'video') {
                    mediaHTML = `<video src="${post.media}" controls></video>`;
                } else if (post.type === 'text') {
                    mediaHTML = `<div class="post-text-content">${post.media}</div>`;
                }
                
                // Format waktu posting
                const postTime = new Date(post.timestamp);
                const now = new Date();
                const diffMs = now - postTime;
                const diffMins = Math.floor(diffMs / 60000);
                const diffHours = Math.floor(diffMs / 3600000);
                const diffDays = Math.floor(diffMs / 86400000);
                
                let timeAgo = '';
                if (diffMins < 1) {
                    timeAgo = 'Baru saja';
                } else if (diffMins < 60) {
                    timeAgo = `${diffMins} menit lalu`;
                } else if (diffHours < 24) {
                    timeAgo = `${diffHours} jam lalu`;
                } else {
                    timeAgo = `${diffDays} hari lalu`;
                }
                
                postsHTML += `
                    <div class="post" data-post-id="${post.id}">
                        <div class="post-header">
                            <img src="${post.userAvatar}" alt="${post.userName}" class="post-user-avatar">
                            <div class="post-user-info">
                                <div class="post-username">${post.userName}</div>
                                <div class="post-time">${timeAgo}</div>
                            </div>
                        </div>
                        <div class="post-content">
                            ${post.description ? `<div class="post-text">${post.description}</div>` : ''}
                            ${mediaHTML ? `<div class="post-media">${mediaHTML}</div>` : ''}
                        </div>
                        <div class="post-stats">
                            <span>${post.views} x dilihat</span>
                            <span>${post.shares} x dibagikan</span>
                        </div>
                        <div class="post-actions">
                            <div class="post-action ${post.liked ? 'active' : ''}" onclick="toggleLike(${post.id})">
                                <div class="post-action-icon">${post.liked ? '❤️' : '🤍'}</div>
                                <div class="post-action-count">${post.likes}</div>
                            </div>
                            <div class="post-action" onclick="toggleComments(${post.id})">
                                <div class="post-action-icon">💬</div>
                                <div class="post-action-count">${post.comments.length}</div>
                            </div>
                            <div class="post-action" onclick="sharePost(${post.id})">
                                <div class="post-action-icon">↗️</div>
                                <div class="post-action-count">Bagikan</div>
                            </div>
                        </div>
                        <div class="comments-section" id="comments-${post.id}" style="display:none;">
                            <div class="comment-input">
                                <input type="text" id="comment-input-${post.id}" placeholder="Tulis komentar...">
                                <button class="comment-btn" onclick="addComment(${post.id})">Kirim</button>
                            </div>
                            <div class="comments-list" id="comments-list-${post.id}">
                                ${post.comments.map(comment => `
                                    <div class="comment">
                                        <img src="${comment.userAvatar}" alt="${comment.userName}" class="comment-avatar">
                                        <div class="comment-content">
                                            <div class="comment-user">${comment.userName}</div>
                                            <div class="comment-text">${comment.text}</div>
                                            <div class="comment-actions">
                                                <span class="comment-action" onclick="likeComment(${post.id}, ${comment.id})">Suka</span>
                                                <span class="comment-action" onclick="replyToComment(${post.id}, ${comment.id})">Balas</span>
                                            </div>
                                        </div>
                                    </div>
                                `).join('')}
                            </div>
                        </div>
                    </div>
                `;
            });
            
            postsContainer.innerHTML = postsHTML;
            
            // Tambahkan view untuk setiap postingan yang ditampilkan
            posts.forEach(post => {
                post.views++;
            });
            savePosts();
        }

        // BARU: Fungsi untuk toggle like pada postingan
        function toggleLike(postId) {
            const post = posts.find(p => p.id === postId);
            if (!post) return;
            
            if (post.liked) {
                post.likes--;
                post.liked = false;
            } else {
                post.likes++;
                post.liked = true;
            }
            
            savePosts();
            displayPosts();
        }

        // BARU: Fungsi untuk toggle komentar
        function toggleComments(postId) {
            const commentsSection = document.getElementById(`comments-${postId}`);
            if (commentsSection.style.display === 'none') {
                commentsSection.style.display = 'block';
            } else {
                commentsSection.style.display = 'none';
            }
        }

        // BARU: Fungsi untuk menambahkan komentar
        function addComment(postId) {
            const commentInput = document.getElementById(`comment-input-${postId}`);
            const commentText = commentInput.value.trim();
            
            if (!commentText) return;
            
            const post = posts.find(p => p.id === postId);
            if (!post) return;
            
            const newComment = {
                id: Date.now(),
                userId: currentUser.email,
                userName: currentUser.name,
                userAvatar: currentUser.img,
                text: commentText,
                timestamp: new Date().toISOString(),
                likes: 0
            };
            
            post.comments.push(newComment);
            savePosts();
            
            // Reset input dan refresh tampilan
            commentInput.value = '';
            displayPosts();
            
            // Buka section komentar
            document.getElementById(`comments-${postId}`).style.display = 'block';
        }

        // BARU: Fungsi untuk menyukai komentar
        function likeComment(postId, commentId) {
            const post = posts.find(p => p.id === postId);
            if (!post) return;
            
            const comment = post.comments.find(c => c.id === commentId);
            if (!comment) return;
            
            comment.likes++;
            savePosts();
            displayPosts();
        }

        // BARU: Fungsi untuk membalas komentar
        function replyToComment(postId, commentId) {
            const commentInput = document.getElementById(`comment-input-${postId}`);
            const post = posts.find(p => p.id === postId);
            if (!post) return;
            
            const comment = post.comments.find(c => c.id === commentId);
            if (!comment) return;
            
            commentInput.value = `@${comment.userName} `;
            commentInput.focus();
        }

        // BARU: Fungsi untuk membagikan postingan
        function sharePost(postId) {
            const post = posts.find(p => p.id === postId);
            if (!post) return;
            
            post.shares++;
            savePosts();
            
            // Simulasi berbagi
            if (navigator.share) {
                navigator.share({
                    title: `Postingan oleh ${post.userName}`,
                    text: post.description,
                    url: window.location.href
                }).then(() => {
                    console.log('Postingan berhasil dibagikan');
                }).catch(error => {
                    console.log('Error sharing:', error);
                });
            } else {
                alert('Postingan berhasil dibagikan!');
            }
            
            displayPosts();
        }

        // PERUBAHAN: Fungsi untuk update UI settings
        function updateSettingsUI() {
            // Mode gelap/terang
            const settingsToggle = document.getElementById('settings-dark-mode-toggle');
            settingsToggle.checked = appSettings.darkMode;
            document.getElementById('theme-status').textContent = appSettings.darkMode ? '🌙 Mode Gelap' : '☀️ Mode Cerah';
            
            // Notifikasi
            document.getElementById('post-notification').checked = appSettings.notifications.posts;
            document.getElementById('message-notification').checked = appSettings.notifications.messages;
            document.getElementById('friend-notification').checked = appSettings.notifications.friends;
            
            // Privasi
            document.getElementById('public-profile').checked = appSettings.privacy.publicProfile;
            document.getElementById('online-status').checked = appSettings.privacy.onlineStatus;
            document.getElementById('direct-messages').checked = appSettings.privacy.directMessages;
            
            // Bahasa
            document.getElementById('language-select').value = appSettings.language;
            updateLanguageDisplay();
        }

        // PERUBAHAN: Fungsi untuk toggle sub-menu
        function toggleSubMenu(menuId) {
            const menu = document.getElementById(menuId);
            const allMenus = document.querySelectorAll('.sub-menu');
            
            allMenus.forEach(m => {
                if (m.id !== menuId) {
                    m.classList.remove('active');
                }
            });
            
            menu.classList.toggle('active');
        }

        // PERUBAHAN: Fungsi untuk update tampilan bahasa
        function updateLanguageDisplay() {
            const languageNames = {
                'id': 'Indonesia',
                'en': 'English',
                'es': 'Español',
                'fr': 'Français',
                'de': 'Deutsch',
                'ja': '日本語',
                'zh': '中文'
            };
            document.getElementById('current-language').textContent = languageNames[appSettings.language] + ' ▼';
        }

        // PERUBAHAN: Fungsi untuk ganti bahasa
        function changeLanguage(lang) {
            appSettings.language = lang;
            saveSettings();
            updateLanguageDisplay();
            alert(`Bahasa telah diubah ke ${document.getElementById('language-select').options[document.getElementById('language-select').selectedIndex].text}`);
        }

        // PERUBAHAN: Fungsi untuk ganti email
        function changeEmail() {
            const newEmail = document.getElementById('change-email').value;
            if (newEmail && validateEmail(newEmail)) {
                // Cek apakah email sudah digunakan oleh pengguna lain
                const existingUser = allUsers.find(user => user.email === newEmail && user.email !== currentUser.email);
                if (existingUser) {
                    alert("Email sudah digunakan oleh pengguna lain!");
                    return;
                }
                
                // Update email di semua pengguna
                const userIndex = allUsers.findIndex(u => u.email === currentUser.email);
                if (userIndex !== -1) {
                    allUsers[userIndex].email = newEmail;
                    saveAllUsers();
                }
                
                // Update email di current user
                currentUser.email = newEmail;
                saveUserData(currentUser);
                
                document.getElementById('change-email').value = '';
                alert('Email berhasil diubah!');
            } else {
                alert('Email tidak valid!');
            }
        }

        // PERUBAHAN: Fungsi untuk ganti password
        function changePassword() {
            const currentPass = document.getElementById('current-password').value;
            const newPass = document.getElementById('new-password').value;
            
            if (!currentPass || !newPass) {
                alert('Harap isi semua field!');
                return;
            }
            
            if (newPass.length < 8) {
                alert('Kata sandi baru minimal 8 karakter!');
                return;
            }
            
            // Verifikasi password lama
            if (currentUser.password === currentPass) {
                // Update password di semua pengguna
                const userIndex = allUsers.findIndex(u => u.email === currentUser.email);
                if (userIndex !== -1) {
                    allUsers[userIndex].password = newPass;
                    saveAllUsers();
                }
                
                // Update password di current user
                currentUser.password = newPass;
                saveUserData(currentUser);
                
                document.getElementById('current-password').value = '';
                document.getElementById('new-password').value = '';
                alert('Kata sandi berhasil diubah!');
            } else {
                alert('Kata sandi saat ini salah!');
            }
        }

        // PERUBAHAN: Fungsi untuk reset settings
        function resetSettings() {
            if (confirm('Apakah Anda yakin ingin mengembalikan semua pengaturan ke default?')) {
                appSettings = {
                    darkMode: true,
                    notifications: {
                        posts: true,
                        messages: true,
                        friends: true
                    },
                    privacy: {
                        publicProfile: true,
                        onlineStatus: true,
                        directMessages: true
                    },
                    language: 'id'
                };
                saveSettings();
                updateSettingsUI();
                toggleDarkMode();
                alert('Pengaturan telah direset ke default!');
            }
        }

        // PERUBAHAN: Fungsi validasi email
        function validateEmail(email) {
            const re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            return re.test(email);
        }

        // BARU: Fungsi untuk generate token reset password
        function generateResetToken() {
            return Math.random().toString(36).substring(2, 15) + Math.random().toString(36).substring(2, 15);
        }

        // BARU: Fungsi untuk mengirim email reset password (simulasi)
        function sendResetEmail(email, token) {
            // Simulasi pengiriman email
            console.log(`Mengirim email reset ke: ${email}`);
            console.log(`Token reset: ${token}`);
            
            // Simpan token dengan timestamp
            resetTokens[email] = {
                token: token,
                timestamp: Date.now()
            };
            saveResetTokens();
            
            // Simulasi: Tampilkan token di alert (dalam aplikasi nyata, ini akan dikirim via email)
            alert(`Tautan reset password telah dikirim ke ${email}. \n\nToken reset (untuk simulasi): ${token}\n\nKlik OK untuk melanjutkan ke halaman reset password.`);
            
            // Simpan email untuk proses reset
            resetEmail = email;
            
            // Tampilkan halaman reset password
            showResetPassword();
        }

        // BARU: Fungsi untuk memverifikasi token reset password
        function verifyResetToken(email, token) {
            const tokenData = resetTokens[email];
            if (!tokenData) return false;
            
            // Token berlaku selama 1 jam
            const isExpired = (Date.now() - tokenData.timestamp) > 3600000; // 1 jam dalam milidetik
            if (isExpired) {
                delete resetTokens[email];
                saveResetTokens();
                return false;
            }
            
            return tokenData.token === token;
        }

        // BARU: Fungsi untuk reset password
        function resetPassword() {
            const newPassword = document.getElementById('reset_password').value;
            const confirmPassword = document.getElementById('reset_confirm_password').value;
            
            if (!newPassword || !confirmPassword) {
                alert('Harap isi semua field!');
                return;
            }
            
            if (newPassword.length < 8) {
                alert('Kata sandi baru minimal 8 karakter!');
                return;
            }
            
            if (newPassword !== confirmPassword) {
                alert('Kata sandi tidak cocok!');
                return;
            }
            
            // Cari user berdasarkan email
            const userIndex = allUsers.findIndex(u => u.email === resetEmail);
            if (userIndex === -1) {
                alert('Email tidak ditemukan!');
                return;
            }
            
            // Update password
            allUsers[userIndex].password = newPassword;
            saveAllUsers();
            
            // Hapus token yang sudah digunakan
            delete resetTokens[resetEmail];
            saveResetTokens();
            
            // Reset form
            document.getElementById('reset_password').value = '';
            document.getElementById('reset_confirm_password').value = '';
            
            alert('Kata sandi berhasil direset! Silakan login dengan kata sandi baru.');
            showLogin();
        }

        // Fungsi: Kembali ke Edit Profil dari Home (Memuat Data Sebelumnya)
        function showEditProfile() {
            document.querySelector('.dropdown-menu').classList.remove('active');

            document.getElementById('profile_name').value = currentUser.name || '';
            
            const previewImg = document.getElementById('preview-profile-pic');
            const placeholderText = document.getElementById('placeholder-text');
            const fileInput = document.getElementById('file_upload_input');
            const uploadWarning = document.getElementById('upload-warning');

            fileInput.value = '';

            // Tampilkan foto yang sudah ada
            if (currentUser.img && currentUser.img !== DEFAULT_PROFILE_IMG) {
                previewImg.src = currentUser.img;
                previewImg.style.display = 'block';
                placeholderText.style.display = 'none';
                uploadedFileUrl = currentUser.img;
                uploadWarning.style.display = 'none';
            } else {
                previewImg.src = '';
                previewImg.style.display = 'none';
                placeholderText.style.display = 'block';
                uploadedFileUrl = '';
                uploadWarning.style.display = 'block';
            }

            showProfileSetup();
        }
        
        // Fungsi untuk menampilkan layar Beranda
        function showHome() {
            if (!isOnline) {
                showErrorScreen();
                return;
            }
            hideAllScreens();
            document.getElementById('home-screen').style.display = 'grid';
            
            // Hapus centering body agar home-container bisa memenuhi layar
            document.body.style.display = 'block';
            document.body.style.minHeight = '100vh';

            // Update nama dan gambar di Header
            document.getElementById('user-profile-name-header').textContent = currentUser.name;
            document.getElementById('user-profile-pic-header').src = currentUser.img;
            
            // Update nama dan gambar di Sidebar
            document.getElementById('user-profile-name-sidebar').textContent = currentUser.name;
            document.getElementById('user-profile-pic-sidebar').src = currentUser.img;
            
            // Update navigasi bawah
            updateBottomNav('home');
            
            // Tampilkan postingan
            displayPosts();
            
            // Tampilkan daftar teman
            displayFriends();
        }

        // PERUBAHAN: Fungsi untuk menampilkan halaman video shorts
        function showShortsPage() {
            if (!isOnline) {
                showErrorScreen();
                return;
            }
            hideAllScreens();
            document.getElementById('shorts-page').style.display = 'block';
            
            // Update navigasi bawah
            updateBottomNav('shorts');
            
            // Auto play video pertama
            setTimeout(() => {
                const firstVideo = document.querySelector('.short-video video');
                if (firstVideo) {
                    firstVideo.play();
                }
            }, 500);
        }

        // PERUBAHAN: Fungsi untuk update navigasi bawah
        function updateBottomNav(activeItem) {
            const navItems = document.querySelectorAll('.nav-item');
            navItems.forEach(item => {
                item.classList.remove('active');
            });
            
            if (activeItem === 'home') {
                document.querySelector('.nav-item:nth-child(1)').classList.add('active');
            } else if (activeItem === 'upload') {
                document.querySelector('.nav-item:nth-child(2)').classList.add('active');
            } else if (activeItem === 'shorts') {
                document.querySelector('.nav-item:nth-child(3)').classList.add('active');
            } else if (activeItem === 'profile') {
                document.querySelector('.nav-item:nth-child(4)').classList.add('active');
            }
        }

        // Fungsi untuk Logout
        function logout() {
            currentUser = {}; // Hapus data pengguna saat ini
            saveUserData({}); // Hapus data dari localStorage
            showWelcomeScreen(); // Kembali ke halaman awal
            alert("Anda telah logout.");
        }

        // PERUBAHAN: Fungsi Toggle Mode Gelap/Cerah yang diperbarui
        function toggleDarkMode() {
            isLightMode = !appSettings.darkMode;
            appSettings.darkMode = !isLightMode;
            saveSettings();
            
            document.body.classList.toggle('light-mode', isLightMode);

            // Update status checkbox
            const toggleCheckbox = document.getElementById('dark-mode-toggle');
            const settingsToggle = document.getElementById('settings-dark-mode-toggle');
            toggleCheckbox.checked = appSettings.darkMode;
            settingsToggle.checked = appSettings.darkMode;
            
            const themeStatus = document.getElementById('theme-status');
            if (themeStatus) {
                themeStatus.textContent = appSettings.darkMode ? '🌙 Mode Gelap' : '☀️ Mode Cerah';
            }
        }

        // PERUBAHAN: Event listeners untuk semua toggle settings
        function setupSettingsEventListeners() {
            // Mode gelap/terang
            document.getElementById('settings-dark-mode-toggle').addEventListener('change', function() {
                appSettings.darkMode = this.checked;
                saveSettings();
                toggleDarkMode();
            });

            // Notifikasi
            document.getElementById('post-notification').addEventListener('change', function() {
                appSettings.notifications.posts = this.checked;
                saveSettings();
                alert(`Notifikasi postingan ${this.checked ? 'diaktifkan' : 'dimatikan'}`);
            });

            document.getElementById('message-notification').addEventListener('change', function() {
                appSettings.notifications.messages = this.checked;
                saveSettings();
                alert(`Notifikasi pesan ${this.checked ? 'diaktifkan' : 'dimatikan'}`);
            });

            document.getElementById('friend-notification').addEventListener('change', function() {
                appSettings.notifications.friends = this.checked;
                saveSettings();
                alert(`Notifikasi pertemanan ${this.checked ? 'diaktifkan' : 'dimatikan'}`);
            });

            // Privasi
            document.getElementById('public-profile').addEventListener('change', function() {
                appSettings.privacy.publicProfile = this.checked;
                saveSettings();
                alert(`Profil ${this.checked ? 'publik' : 'pribadi'}`);
            });

            document.getElementById('online-status').addEventListener('change', function() {
                appSettings.privacy.onlineStatus = this.checked;
                saveSettings();
                alert(`Status online ${this.checked ? 'ditampilkan' : 'disembunyikan'}`);
            });

            document.getElementById('direct-messages').addEventListener('change', function() {
                appSettings.privacy.directMessages = this.checked;
                saveSettings();
                alert(`Pesan langsung ${this.checked ? 'diizinkan' : 'diblokir'}`);
            });
        }

        // PERUBAHAN: Fungsi untuk update profil
        function updateProfile() {
            const newName = document.getElementById('edit-profile-name').value;
            
            if (newName.trim() === '') {
                alert("Nama profil tidak boleh kosong!");
                return;
            }
            
            currentUser.name = newName;
            saveUserData(currentUser);
            
            // Update di semua pengguna juga
            const userIndex = allUsers.findIndex(u => u.email === currentUser.email);
            if (userIndex !== -1) {
                allUsers[userIndex].name = newName;
                saveAllUsers();
            }
            
            alert("Profil berhasil diperbarui!");
            showProfilePage();
        }

        // PERUBAHAN: Fungsi untuk toggle fitur pencarian teman
        function toggleFriendSearch() {
            const searchContainer = document.getElementById('searchFriendContainer');
            const searchInput = document.getElementById('searchFriendInput');
            
            if (searchContainer.style.display === 'block') {
                searchContainer.style.display = 'none';
                searchInput.value = '';
                document.getElementById('searchResults').innerHTML = '';
            } else {
                searchContainer.style.display = 'block';
                searchInput.focus();
            }
        }

        // PERUBAHAN: Fungsi untuk mencari teman
        function searchFriends() {
            const searchTerm = document.getElementById('searchFriendInput').value.toLowerCase();
            const searchResults = document.getElementById('searchResults');
            
            if (searchTerm.length === 0) {
                searchResults.innerHTML = '<p style="text-align: center; color: #a0a0a0; font-size: 14px; padding: 10px;">Ketik nama atau username untuk mencari</p>';
                return;
            }
            
            // Gabungkan sampleUsers dan allUsers untuk pencarian
            const allAvailableUsers = [...sampleUsers, ...allUsers.filter(user => 
                user.email !== currentUser.email && !friends.some(friend => friend.id === user.id || friend.email === user.email)
            )];
            
            const filteredUsers = allAvailableUsers.filter(user => 
                user.name.toLowerCase().includes(searchTerm) || 
                (user.username && user.username.toLowerCase().includes(searchTerm)) ||
                (user.email && user.email.toLowerCase().includes(searchTerm))
            );
            
            // Hapus duplikat berdasarkan ID atau email
            const uniqueUsers = filteredUsers.filter((user, index, self) => 
                index === self.findIndex(u => 
                    (u.id && u.id === user.id) || (u.email && u.email === user.email)
                )
            );
            
            if (uniqueUsers.length === 0) {
                searchResults.innerHTML = '<p style="text-align: center; color: #a0a0a0; font-size: 14px; padding: 10px;">Tidak ada hasil ditemukan</p>';
                return;
            }
            
            let resultsHTML = '';
            uniqueUsers.forEach(user => {
                // Cek apakah user sudah menjadi teman
                const isAlreadyFriend = friends.some(friend => 
                    friend.id === user.id || friend.email === user.email
                );
                
                resultsHTML += `
                    <div class="friend-result-item">
                        <div class="friend-info">
                            <img src="${user.avatar || user.img || DEFAULT_PROFILE_IMG}" alt="${user.name}" class="friend-avatar">
                            <div class="friend-details">
                                <div class="friend-name">${user.name}</div>
                                <div class="friend-username">${user.username || user.email || ''}</div>
                            </div>
                        </div>
                        <div class="add-friend-icon" onclick="addFriend(${user.id || 'null'}, '${user.email || ''}')" style="${isAlreadyFriend ? 'background: #4CAF50;' : ''}">
                            ${isAlreadyFriend ? '✓' : '+'}
                        </div>
                    </div>
                `;
            });
            
            searchResults.innerHTML = resultsHTML;
        }

        // PERUBAHAN: Fungsi untuk menambahkan teman
        function addFriend(userId, userEmail) {
            // Cari user berdasarkan ID atau email
            let user;
            if (userId && userId !== 'null') {
                user = sampleUsers.find(u => u.id === userId) || allUsers.find(u => u.id === userId);
            } else if (userEmail) {
                user = allUsers.find(u => u.email === userEmail);
            }
            
            if (!user) {
                alert('Pengguna tidak ditemukan!');
                return;
            }
            
            // Cek apakah sudah menjadi teman
            const isAlreadyFriend = friends.some(friend => 
                friend.id === user.id || friend.email === user.email
            );
            
            if (isAlreadyFriend) {
                alert(`${user.name} sudah menjadi teman Anda!`);
                return;
            }
            
            // Tambahkan ke daftar teman
            const newFriend = {
                id: user.id || Date.now(),
                name: user.name,
                username: user.username,
                email: user.email,
                avatar: user.avatar || user.img || DEFAULT_PROFILE_IMG,
                online: user.online || Math.random() > 0.5, // Random status online/offline
                addedAt: new Date().toISOString()
            };
            
            friends.push(newFriend);
            saveFriends();
            
            // Refresh tampilan pencarian dan daftar teman
            searchFriends();
            displayFriends();
            
            alert(`Anda telah menambahkan ${user.name} sebagai teman!`);
        }

        // BARU: Fungsi untuk menampilkan daftar teman
        function displayFriends() {
            const friendsContainer = document.getElementById('friendsContainer');
            
            if (friends.length === 0) {
                friendsContainer.innerHTML = '<p style="text-align: center; color: #a0a0a0; font-size: 14px; padding: 10px;">Belum ada teman. Cari dan tambahkan teman!</p>';
                return;
            }
            
            let friendsHTML = '';
            
            friends.forEach(friend => {
                friendsHTML += `
                    <div class="friend-item">
                        <img src="${friend.avatar}" alt="${friend.name}" class="friend-avatar">
                        <div class="friend-details">
                            <div class="friend-name">${friend.name}</div>
                            <div class="friend-status">
                                <span class="status-indicator ${friend.online ? 'status-online' : 'status-offline'}"></span>
                                ${friend.online ? 'Online' : 'Offline'}
                            </div>
                        </div>
                    </div>
                `;
            });
            
            friendsContainer.innerHTML = friendsHTML;
        }

        // PERUBAHAN: Fungsi untuk mencari shorts
        function searchShorts() {
            alert('Fitur pencarian shorts akan segera hadir!');
            // Di sini Anda bisa menambahkan logika untuk mencari video shorts
        }

        // BARU: Fungsi untuk menampilkan halaman pencarian
        function showSearchPage() {
            if (!isOnline) {
                showErrorScreen();
                return;
            }
            hideAllScreens();
            document.getElementById('search-page').style.display = 'flex';
            
            // Reset pencarian
            currentSearchQuery = '';
            document.getElementById('search-input').value = '';
            document.getElementById('search-clear').style.display = 'none';
            
            // Tampilkan konten default
            displayDefaultSearchContent();
        }

        // BARU: Fungsi untuk menutup halaman pencarian
        function closeSearch() {
            showHome();
        }

        // BARU: Fungsi untuk menampilkan konten default pencarian
        function displayDefaultSearchContent() {
            const searchResultsContainer = document.getElementById('search-results-container');
            
            let contentHTML = `
                <div class="search-section">
                    <div class="search-section-title">Pencarian Terpopuler</div>
                    <div class="search-results-grid">
                        <div class="search-result-item" onclick="searchFor('youtube')">
                            <img src="https://via.placeholder.com/150/ff6b6b/ffffff?text=YT" alt="YouTube" class="search-result-media">
                            <div class="search-result-info">
                                <div class="search-result-name">YouTube</div>
                                <div class="search-result-stats">
                                    <span>1.2M video</span>
                                </div>
                            </div>
                        </div>
                        <div class="search-result-item" onclick="searchFor('tiktok')">
                            <img src="https://via.placeholder.com/150/74d3ff/ffffff?text=TT" alt="TikTok" class="search-result-media">
                            <div class="search-result-info">
                                <div class="search-result-name">TikTok</div>
                                <div class="search-result-stats">
                                    <span>850K video</span>
                                </div>
                            </div>
                        </div>
                        <div class="search-result-item" onclick="searchFor('instagram')">
                            <img src="https://via.placeholder.com/150/ff74d9/ffffff?text=IG" alt="Instagram" class="search-result-media">
                            <div class="search-result-info">
                                <div class="search-result-name">Instagram</div>
                                <div class="search-result-stats">
                                    <span>980K video</span>
                                </div>
                            </div>
                        </div>
                        <div class="search-result-item" onclick="searchFor('gaming')">
                            <img src="https://via.placeholder.com/150/74ff98/ffffff?text=GM" alt="Gaming" class="search-result-media">
                            <div class="search-result-info">
                                <div class="search-result-name">Gaming</div>
                                <div class="search-result-stats">
                                    <span>650K video</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="search-section">
                    <div class="search-section-title">Akun Populer</div>
            `;
            
            // Tambahkan akun populer
            sampleUsers.slice(0, 2).forEach(user => {
                contentHTML += `
                    <div class="user-result-item" onclick="showOtherUserProfile(${user.id})">
                        <img src="${user.avatar}" alt="${user.name}" class="user-result-avatar">
                        <div class="user-result-info">
                            <div class="user-result-name">${user.name}</div>
                            <div class="user-result-username">${user.username}</div>
                            <div class="user-result-bio">${user.bio}</div>
                        </div>
                        <button class="user-result-follow-btn">Follow</button>
                    </div>
                `;
            });
            
            contentHTML += `</div>`;
            
            searchResultsContainer.innerHTML = contentHTML;
        }

        // BARU: Fungsi untuk melakukan pencarian
        function performSearch(query) {
            if (!query.trim()) {
                displayDefaultSearchContent();
                return;
            }
            
            currentSearchQuery = query;
            
            // Tambahkan ke riwayat pencarian
            addToSearchHistory(query);
            
            // Tampilkan hasil pencarian berdasarkan tab aktif
            displaySearchResults(query);
        }

        // BARU: Fungsi untuk menampilkan hasil pencarian
        function displaySearchResults(query) {
            const searchResultsContainer = document.getElementById('search-results-container');
            const searchTerm = query.toLowerCase();
            
            let resultsHTML = '';
            
            if (currentSearchTab === 'all' || currentSearchTab === 'accounts') {
                // Cari akun
                const accountResults = sampleUsers.filter(user => 
                    user.name.toLowerCase().includes(searchTerm) || 
                    user.username.toLowerCase().includes(searchTerm) ||
                    user.bio.toLowerCase().includes(searchTerm)
                );
                
                if (accountResults.length > 0) {
                    resultsHTML += `
                        <div class="search-section">
                            <div class="search-section-title">Akun</div>
                    `;
                    
                    accountResults.forEach(user => {
                        resultsHTML += `
                            <div class="user-result-item" onclick="showOtherUserProfile(${user.id})">
                                <img src="${user.avatar}" alt="${user.name}" class="user-result-avatar">
                                <div class="user-result-info">
                                    <div class="user-result-name">${user.name}</div>
                                    <div class="user-result-username">${user.username}</div>
                                    <div class="user-result-bio">${user.bio}</div>
                                </div>
                                <button class="user-result-follow-btn">Follow</button>
                            </div>
                        `;
                    });
                    
                    resultsHTML += `</div>`;
                }
            }
            
            if (currentSearchTab === 'all' || currentSearchTab === 'videos') {
                // Cari video
                const videoResults = sampleVideos.filter(video => 
                    video.title.toLowerCase().includes(searchTerm) || 
                    video.user.toLowerCase().includes(searchTerm)
                );
                
                if (videoResults.length > 0) {
                    resultsHTML += `
                        <div class="search-section">
                            <div class="search-section-title">Video</div>
                            <div class="search-results-grid">
                    `;
                    
                    videoResults.forEach(video => {
                        resultsHTML += `
                            <div class="search-result-item" onclick="playVideo(${video.id})">
                                <img src="${video.thumbnail}" alt="${video.title}" class="search-result-media">
                                <div class="search-result-info">
                                    <div class="search-result-name">${video.title}</div>
                                    <div class="search-result-stats">
                                        <span>${video.views} views</span>
                                        <span>${video.likes} likes</span>
                                    </div>
                                </div>
                            </div>
                        `;
                    });
                    
                    resultsHTML += `
                            </div>
                        </div>
                    `;
                }
            }
            
            if (currentSearchTab === 'all' || currentSearchTab === 'live') {
                // Cari live streaming
                const liveResults = sampleLiveStreams.filter(live => 
                    live.title.toLowerCase().includes(searchTerm) || 
                    live.user.toLowerCase().includes(searchTerm) ||
                    live.category.toLowerCase().includes(searchTerm)
                );
                
                if (liveResults.length > 0) {
                    resultsHTML += `
                        <div class="search-section">
                            <div class="search-section-title">Live</div>
                            <div class="search-results-grid">
                    `;
                    
                    liveResults.forEach(live => {
                        resultsHTML += `
                            <div class="live-result-item" onclick="watchLive(${live.id})">
                                <img src="${live.thumbnail}" alt="${live.title}" class="search-result-media">
                                <div class="live-badge">LIVE</div>
                                <div class="live-viewers">${live.viewers} viewers</div>
                                <div class="live-info">
                                    <div class="live-title">${live.title}</div>
                                    <div class="live-user">${live.user}</div>
                                </div>
                            </div>
                        `;
                    });
                    
                    resultsHTML += `
                            </div>
                        </div>
                    `;
                }
            }
            
            // Jika tidak ada hasil
            if (!resultsHTML) {
                resultsHTML = `
                    <div class="no-results">
                        <div class="no-results-icon">🔍</div>
                        <h3>Tidak ada hasil untuk "${query}"</h3>
                        <p>Coba kata kunci lain atau periksa ejaan Anda</p>
                    </div>
                `;
            }
            
            searchResultsContainer.innerHTML = resultsHTML;
        }

        // BARU: Fungsi untuk mengganti tab pencarian
        function switchSearchTab(tab) {
            currentSearchTab = tab;
            
            // Update tampilan tab
            const tabs = document.querySelectorAll('.search-tab');
            tabs.forEach(tabElement => {
                tabElement.classList.remove('active');
            });
            
            event.target.classList.add('active');
            
            // Tampilkan hasil pencarian berdasarkan tab
            if (currentSearchQuery) {
                displaySearchResults(currentSearchQuery);
            } else {
                displayDefaultSearchContent();
            }
        }

        // BARU: Fungsi untuk mencari dengan query tertentu
        function searchFor(query) {
            document.getElementById('search-input').value = query;
            performSearch(query);
        }

        // BARU: Fungsi untuk membersihkan pencarian
        function clearSearch() {
            document.getElementById('search-input').value = '';
            document.getElementById('search-clear').style.display = 'none';
            displayDefaultSearchContent();
        }

        // BARU: Fungsi untuk memutar video
        function playVideo(videoId) {
            alert(`Memutar video dengan ID: ${videoId}`);
            // Di sini bisa ditambahkan logika untuk memutar video
        }

        // BARU: Fungsi untuk menonton live streaming
        function watchLive(liveId) {
            alert(`Menonton live streaming dengan ID: ${liveId}`);
            // Di sini bisa ditambahkan logika untuk menonton live streaming
        }

        // BARU: Event listener untuk input pencarian
        document.getElementById('search-input').addEventListener('input', function() {
            const query = this.value;
            const clearBtn = document.getElementById('search-clear');
            
            if (query) {
                clearBtn.style.display = 'block';
                performSearch(query);
            } else {
                clearBtn.style.display = 'none';
                displayDefaultSearchContent();
            }
        });

        // BARU: Event listener untuk tombol enter di input pencarian
        document.getElementById('search-input').addEventListener('keypress', function(e) {
            if (e.key === 'Enter') {
                performSearch(this.value);
            }
        });

        // 1. Proses Pendaftaran -> Lanjut ke Setup Profil
        document.getElementById('register-form').addEventListener('submit', function(e) {
            e.preventDefault();
            const email = document.getElementById('reg_email').value;
            const password = document.getElementById('reg_password').value;
            
            // Validasi email
            if (!validateEmail(email)) {
                alert("Format email tidak valid!");
                return;
            }
            
            // Validasi password
            if (password.length < 8) {
                alert("Kata sandi minimal 8 karakter!");
                return;
            }
            
            // Cek apakah email sudah terdaftar
            const existingUser = allUsers.find(user => user.email === email);
            if (existingUser) {
                alert("Email sudah terdaftar! Silakan login.");
                showLogin();
                return;
            }
            
            // Data sementara untuk register
            currentUser.email = email;
            currentUser.password = password; // Hanya untuk simulasi
            
            // Reset data profil untuk pendaftaran baru
            uploadedFileUrl = '';
            currentUser.name = '';
            currentUser.img = DEFAULT_PROFILE_IMG;

            // Simpan user baru ke daftar semua pengguna
            allUsers.push({
                email: currentUser.email,
                password: currentUser.password,
                name: '',
                img: DEFAULT_PROFILE_IMG
            });
            saveAllUsers();
            
            saveUserData(currentUser); // Simpan data awal
            
            alert("Pendaftaran Berhasil! Sekarang lengkapi profil Anda.");
            showEditProfile();
        });
        
        // 2. Proses Login -> Lanjut ke Setup Profil/Beranda
        document.getElementById('login-form').addEventListener('submit', function(e) {
            e.preventDefault();
            const loginEmail = document.getElementById('log_email').value;
            const loginPassword = document.getElementById('log_password').value;

            // Cari user di daftar semua pengguna
            const user = allUsers.find(u => u.email === loginEmail && u.password === loginPassword);
            
            if (user) {
                currentUser = user;
                saveUserData(currentUser); // Simpan sebagai user aktif
                uploadedFileUrl = currentUser.img;
                alert("Login Berhasil!");

                // Jika nama dan gambar sudah lengkap, langsung ke Beranda
                if (currentUser.name && currentUser.img && currentUser.img !== DEFAULT_PROFILE_IMG) {
                    showHome();
                } else {
                    // Jika profil belum lengkap, arahkan ke setup profil
                    showEditProfile();
                }
            } else {
                alert("Login Gagal! Email atau kata sandi salah.");
            }
        });
        
        // BARU: 3. Proses Lupa Password -> Kirim Email Reset
        document.getElementById('forgot-form').addEventListener('submit', function(e) {
            e.preventDefault();
            const email = document.getElementById('forgot_email').value;
            
            // Validasi email
            if (!validateEmail(email)) {
                alert("Format email tidak valid!");
                return;
            }
            
            // Cek apakah email terdaftar
            const userExists = allUsers.find(user => user.email === email);
            if (!userExists) {
                alert("Email tidak terdaftar dalam sistem!");
                return;
            }
            
            // Generate dan kirim token reset
            const resetToken = generateResetToken();
            sendResetEmail(email, resetToken);
        });
        
        // BARU: 4. Proses Reset Password
        document.getElementById('reset-password-form').addEventListener('submit', function(e) {
            e.preventDefault();
            resetPassword();
        });
        
        // 5. Handle File Upload dan Preview dari Galeri
        document.getElementById('file_upload_input').addEventListener('change', function(e) {
            const file = e.target.files[0];
            const previewImg = document.getElementById('preview-profile-pic');
            const placeholderText = document.getElementById('placeholder-text');
            const uploadWarning = document.getElementById('upload-warning');
            
            if (file) {
                const reader = new FileReader();
                
                reader.onload = function(event) {
                    previewImg.src = event.target.result;
                    previewImg.style.display = 'block';
                    placeholderText.style.display = 'none';
                    uploadWarning.style.display = 'none';

                    uploadedFileUrl = event.target.result;
                };
                
                reader.readAsDataURL(file);
            } else {
                if (uploadedFileUrl) {
                    previewImg.src = uploadedFileUrl;
                    previewImg.style.display = 'block';
                    placeholderText.style.display = 'none';
                    uploadWarning.style.display = 'none';
                } else {
                    previewImg.src = '';
                    previewImg.style.display = 'none';
                    placeholderText.style.display = 'block';
                    uploadWarning.style.display = 'block';
                }
            }
        });

        // PERUBAHAN: Handle upload foto profil di halaman profil
        document.getElementById('edit-profile-pic').addEventListener('change', function(e) {
            const file = e.target.files[0];
            if (file) {
                const reader = new FileReader();
                reader.onload = function(event) {
                    currentUser.img = event.target.result;
                    // Update di semua pengguna juga
                    const userIndex = allUsers.findIndex(u => u.email === currentUser.email);
                    if (userIndex !== -1) {
                        allUsers[userIndex].img = event.target.result;
                        saveAllUsers();
                    }
                    saveUserData(currentUser);
                    document.getElementById('profile-page-pic').src = event.target.result;
                    alert("Foto profil berhasil diubah!");
                };
                reader.readAsDataURL(file);
            }
        });

        // 6. Proses Setup Profil -> Lanjut ke Beranda (DENGAN VALIDASI FOTO WAJIB)
        document.getElementById('profile-setup-form').addEventListener('submit', function(e) {
            e.preventDefault();
            
            const profileName = document.getElementById('profile_name').value;
            const uploadWarning = document.getElementById('upload-warning');

            // **VALIDASI WAJIB FOTO PROFIL**
            if (!uploadedFileUrl || profileName.trim() === '') {
                uploadWarning.style.display = 'block';
                alert("Mohon lengkapi **Nama Profil** dan **Unggah Foto Profil** sebelum melanjutkan.");
                return;
            }
            
            // Simpan data profil ke objek currentUser dan localStorage
            currentUser.name = profileName;
            currentUser.img = uploadedFileUrl;
            
            // Update di semua pengguna juga
            const userIndex = allUsers.findIndex(u => u.email === currentUser.email);
            if (userIndex !== -1) {
                allUsers[userIndex].name = profileName;
                allUsers[userIndex].img = uploadedFileUrl;
                saveAllUsers();
            }
            
            saveUserData(currentUser);

            alert(`Profil ${profileName} telah disimpan/diperbarui. Selamat datang!`);
            showHome();
        });
        
        // 7. Event Listener untuk Toggle Dark Mode
        document.getElementById('dark-mode-toggle').addEventListener('change', toggleDarkMode);

        // PERUBAHAN: Event listener untuk pencarian teman
        document.getElementById('searchFriendInput').addEventListener('input', searchFriends);

        // 8. Penanganan saat Halaman Dimuat
        function initApp() {
            // Cek status koneksi
            isOnline = navigator.onLine;
            
            // Cek apakah ada user yang sudah login
            const storedUser = loadUserData();
            if (storedUser && storedUser.email) {
                // Cari user di daftar semua pengguna
                const user = allUsers.find(u => u.email === storedUser.email);
                if (user) {
                    currentUser = user;
                    
                    // Jika ada data di localStorage, cek kelengkapan profil
                    if (currentUser.name && currentUser.img && currentUser.img !== DEFAULT_PROFILE_IMG) {
                        showHome(); // Langsung ke Beranda
                    } else {
                        showEditProfile(); // Lanjutkan setup profil
                    }
                } else {
                    showWelcomeScreen(); // User tidak ditemukan, arahkan ke halaman awal
                }
            } else {
                // Jika tidak ada data, tampilkan halaman awal
                showWelcomeScreen();
            }

            // PERUBAHAN: Setup event listeners untuk settings
            setupSettingsEventListeners();
            
            // PERUBAHAN: Terapkan settings saat startup
            document.body.classList.toggle('light-mode', !appSettings.darkMode);
        }

        // Jalankan inisialisasi aplikasi
        initApp();

    </script>
</body>
</html>
