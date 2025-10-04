# 🚀 Deployment Guide - Active For You Charitable Trust

This guide will walk you through deploying your website step-by-step.

## 📦 What You Have

- `index.html` - Your complete website (single file)
- No dependencies to install
- No build process required
- Works on any static hosting platform

---

## 🌐 Method 1: Vercel (Easiest & Recommended)

**Time Required: 2 minutes**

### Step-by-Step:

1. **Create Account**
   - Go to https://vercel.com
   - Sign up with GitHub, GitLab, or Bitbucket (free)

2. **Deploy**
   - Click "Add New..." → "Project"
   - Choose one of these options:
     
     **Option A: Drag & Drop (Fastest)**
     - Drag your `index.html` file into the upload area
     - Click "Deploy"
     - Done! ✅
     
     **Option B: Git Repository**
     - Click "Import Git Repository"
     - Select your repository
     - Framework Preset: **Other**
     - Build Command: Leave **empty**
     - Output Directory: Leave **empty**
     - Click "Deploy"

3. **Custom Domain (Optional)**
   - Go to Project Settings → Domains
   - Add your custom domain
   - Follow DNS configuration instructions

**Your site is now live!** 🎉

Example URL: `https://your-project-name.vercel.app`

---

## 🎨 Method 2: Netlify

**Time Required: 2 minutes**

### Step-by-Step:

1. **Create Account**
   - Go to https://netlify.com
   - Sign up (free)

2. **Deploy**
   
   **Option A: Drag & Drop (Fastest)**
   - Go to https://app.netlify.com/drop
   - Drag your `index.html` file
   - Done! ✅
   
   **Option B: Git Repository**
   - Click "New site from Git"
   - Connect your repository
   - Build command: Leave **empty**
   - Publish directory: `/`
   - Click "Deploy site"

3. **Custom Domain (Optional)**
   - Go to Site Settings → Domain Management
   - Add custom domain
   - Configure DNS

**Your site is now live!** 🎉

Example URL: `https://your-site-name.netlify.app`

---

## 🐙 Method 3: GitHub Pages

**Time Required: 3 minutes**

### Step-by-Step:

1. **Create Repository**
   - Go to https://github.com
   - Click "New repository"
   - Name it (e.g., `charity-website`)
   - Make it Public
   - Click "Create repository"

2. **Upload File**
   ```bash
   # If using command line:
   git init
   git add index.html
   git commit -m "Initial commit"
   git branch -M main
   git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO.git
   git push -u origin main
   ```
   
   **OR** use GitHub's web interface:
   - Click "uploading an existing file"
   - Drag `index.html`
   - Click "Commit changes"

3. **Enable GitHub Pages**
   - Go to repository Settings
   - Scroll to "Pages" section
   - Source: Select `main` branch
   - Folder: `/ (root)`
   - Click "Save"
   - Wait 1-2 minutes

**Your site is now live!** 🎉

URL: `https://YOUR_USERNAME.github.io/YOUR_REPO/`

---

## ☁️ Method 4: Cloudflare Pages

**Time Required: 3 minutes**

### Step-by-Step:

1. **Create Account**
   - Go to https://pages.cloudflare.com
   - Sign up (free)

2. **Deploy**
   - Click "Create a project"
   - Connect your Git repository
   - Build command: Leave **empty**
   - Build output directory: `/`
   - Click "Save and Deploy"

**Benefits:**
- Global CDN
- Automatic HTTPS
- Unlimited bandwidth
- DDoS protection

---

## 🔥 Method 5: Firebase Hosting

**Time Required: 5 minutes**

### Step-by-Step:

1. **Install Firebase CLI**
   ```bash
   npm install -g firebase-tools
   ```

2. **Login**
   ```bash
   firebase login
   ```

3. **Initialize**
   ```bash
   firebase init hosting
   ```
   - Select "Use an existing project" or create new
   - Public directory: `.` (current directory)
   - Single-page app: `Yes`
   - Overwrite index.html: `No`

4. **Deploy**
   ```bash
   firebase deploy
   ```

**Your site is now live!** 🎉

URL: `https://YOUR_PROJECT.web.app`

---

## 💰 Cost Comparison

| Platform | Free Tier | Bandwidth | Custom Domain | SSL |
|----------|-----------|-----------|---------------|-----|
| **Vercel** | ✅ Yes | 100GB/month | ✅ Free | ✅ Free |
| **Netlify** | ✅ Yes | 100GB/month | ✅ Free | ✅ Free |
| **GitHub Pages** | ✅ Yes | 100GB/month | ✅ Free | ✅ Free |
| **Cloudflare** | ✅ Yes | Unlimited | ✅ Free | ✅ Free |
| **Firebase** | ✅ Yes | 10GB/month | ✅ Free | ✅ Free |

**All options are FREE for your use case!**

---

## 🔧 Custom Domain Setup

### For Vercel:
1. Go to Project Settings → Domains
2. Add your domain (e.g., `activeforyou.org`)
3. Add these DNS records at your domain registrar:
   ```
   Type: A
   Name: @
   Value: 76.76.21.21
   
   Type: CNAME
   Name: www
   Value: cname.vercel-dns.com
   ```

### For Netlify:
1. Go to Site Settings → Domain Management
2. Add custom domain
3. Add DNS records:
   ```
   Type: A
   Name: @
   Value: 75.2.60.5
   
   Type: CNAME
   Name: www
   Value: YOUR_SITE.netlify.app
   ```

### For GitHub Pages:
1. Add file named `CNAME` to repository with your domain
2. Add DNS records:
   ```
   Type: A
   Name: @
   Value: 185.199.108.153
   Value: 185.199.109.153
   Value: 185.199.110.153
   Value: 185.199.111.153
   
   Type: CNAME
   Name: www
   Value: YOUR_USERNAME.github.io
   ```

---

## ✅ Post-Deployment Checklist

After deploying, verify:

- [ ] Website loads correctly
- [ ] All pages are accessible
- [ ] Navigation works on all pages
- [ ] Mobile responsive design works
- [ ] Images load properly
- [ ] Contact form shows notifications
- [ ] Donation modal opens
- [ ] Gallery upload works
- [ ] Social media links work
- [ ] No console errors (press F12)

---

## 🔍 SEO Setup (After Deployment)

### 1. Google Search Console
- Go to https://search.google.com/search-console
- Add your property (website URL)
- Verify ownership
- Submit sitemap (optional for single-page sites)

### 2. Update Meta Tags
In `index.html`, update these lines with your actual domain:
```html
<meta property="og:url" content="https://YOUR-ACTUAL-DOMAIN.com/">
<meta property="twitter:url" content="https://YOUR-ACTUAL-DOMAIN.com/">
```

### 3. Google Analytics (Optional)
Add before `</head>` tag:
```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-XXXXXXXXXX');
</script>
```

---

## 🐛 Troubleshooting

### Issue: Website shows 404
**Solution:** Make sure file is named exactly `index.html` (lowercase)

### Issue: Images not loading
**Solution:** Check image URLs are accessible and use HTTPS

### Issue: Mobile menu not working
**Solution:** Clear browser cache and hard refresh (Ctrl+Shift+R)

### Issue: Styles not applying
**Solution:** Ensure Tailwind CDN is loading (check browser console)

### Issue: React errors in console
**Solution:** Make sure you're using the production React build (already configured)

---

## 📞 Need Help?

If you encounter issues:

1. Check browser console (F12) for errors
2. Test in incognito/private mode
3. Try a different browser
4. Clear cache and cookies
5. Contact: ACTIVEFORYOUTRUST@GMAIL.COM

---

## 🎉 Success!

Once deployed, share your website:
- 📱 Social Media
- 📧 Email Newsletter
- 📄 Business Cards
- 🌐 Google My Business
- 📰 Local Press

**Congratulations on launching your charitable trust website!** 🎊

---

**Last Updated:** 2024
**Maintained by:** Active For You Charitable Trust
