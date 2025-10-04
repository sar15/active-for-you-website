# 🚀 Vercel Deployment Guide - Custom Domain

Complete step-by-step guide to deploy your Active For You website on Vercel with your personal domain.

---

## 📋 Prerequisites

Before you start:
- [ ] Vercel account (free) - https://vercel.com
- [ ] Your custom domain name
- [ ] Access to your domain's DNS settings
- [ ] Changed admin password in `index.html` (line ~269)

---

## 🎯 Quick Deploy (5 Minutes)

### Step 1: Prepare Your Files

Your project is ready! These files will be deployed:
```
✅ index.html          (your website)
✅ vercel.json         (Vercel configuration)
✅ .vercelignore       (files to exclude)
```

### Step 2: Deploy to Vercel

#### Option A: GitHub (Recommended)

1. **Create GitHub Repository**
   ```bash
   cd /Users/rahilkhedapawala/Documents/gst_pipline/extractor/CascadeProjects/splitwise
   git init
   git add index.html vercel.json .vercelignore .gitignore
   git commit -m "Initial commit - Active For You website"
   ```

2. **Push to GitHub**
   - Go to https://github.com/new
   - Create repository (e.g., "active-for-you-website")
   - Follow instructions to push:
   ```bash
   git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO.git
   git branch -M main
   git push -u origin main
   ```

3. **Import to Vercel**
   - Go to https://vercel.com/new
   - Click "Import Git Repository"
   - Select your repository
   - Click "Import"
   - Framework Preset: **Other** (auto-detected)
   - Click "Deploy"
   - Wait 30-60 seconds ✅

#### Option B: Vercel CLI (Alternative)

1. **Install Vercel CLI**
   ```bash
   npm install -g vercel
   ```

2. **Login**
   ```bash
   vercel login
   ```

3. **Deploy**
   ```bash
   cd /Users/rahilkhedapawala/Documents/gst_pipline/extractor/CascadeProjects/splitwise
   vercel
   ```
   
   Follow prompts:
   - Set up and deploy? **Y**
   - Which scope? Select your account
   - Link to existing project? **N**
   - Project name? **active-for-you** (or your choice)
   - Directory? **./** (current directory)
   - Override settings? **N**

4. **Deploy to Production**
   ```bash
   vercel --prod
   ```

---

## 🌐 Step 3: Add Your Custom Domain

### A. In Vercel Dashboard

1. **Go to Project Settings**
   - Open your project in Vercel
   - Click "Settings" tab
   - Click "Domains" in sidebar

2. **Add Domain**
   - Click "Add Domain"
   - Enter your domain (e.g., `yourdomain.com`)
   - Click "Add"

3. **Note the DNS Records**
   Vercel will show you DNS records to add. Example:
   ```
   Type: A
   Name: @
   Value: 76.76.21.21
   
   Type: CNAME
   Name: www
   Value: cname.vercel-dns.com
   ```

### B. Configure Your Domain DNS

#### If using Namecheap:

1. Go to Namecheap Dashboard
2. Click "Manage" next to your domain
3. Go to "Advanced DNS" tab
4. Add these records:

   **For Root Domain (@):**
   ```
   Type: A Record
   Host: @
   Value: 76.76.21.21
   TTL: Automatic
   ```

   **For WWW:**
   ```
   Type: CNAME Record
   Host: www
   Value: cname.vercel-dns.com
   TTL: Automatic
   ```

5. Save all changes

#### If using GoDaddy:

1. Go to GoDaddy DNS Management
2. Click "Add" for new record

   **For Root Domain:**
   ```
   Type: A
   Name: @
   Value: 76.76.21.21
   TTL: 1 Hour
   ```

   **For WWW:**
   ```
   Type: CNAME
   Name: www
   Value: cname.vercel-dns.com
   TTL: 1 Hour
   ```

3. Save all changes

#### If using Cloudflare:

1. Go to Cloudflare DNS
2. Add DNS records:

   **For Root Domain:**
   ```
   Type: A
   Name: @
   Content: 76.76.21.21
   Proxy status: Proxied (orange cloud)
   ```

   **For WWW:**
   ```
   Type: CNAME
   Name: www
   Content: cname.vercel-dns.com
   Proxy status: Proxied (orange cloud)
   ```

3. Save

#### If using Google Domains:

1. Go to Google Domains DNS
2. Click "Manage custom records"

   **For Root Domain:**
   ```
   Host name: @
   Type: A
   TTL: 1H
   Data: 76.76.21.21
   ```

   **For WWW:**
   ```
   Host name: www
   Type: CNAME
   TTL: 1H
   Data: cname.vercel-dns.com
   ```

3. Save

### C. Wait for DNS Propagation

- **Time:** 5 minutes to 48 hours (usually 15-30 minutes)
- **Check status:** https://www.whatsmydns.net
- **Vercel will auto-detect** when DNS is ready
- **SSL certificate** will be automatically issued

---

## ✅ Step 4: Verify Deployment

### Check These:

1. **Visit Your Domain**
   - https://yourdomain.com
   - https://www.yourdomain.com
   - Both should work!

2. **Test SSL Certificate**
   - Look for padlock icon in browser
   - Should show "Secure" or "Connection is secure"

3. **Test All Pages**
   - [ ] Home page loads
   - [ ] Navigation works
   - [ ] Gallery page works
   - [ ] Contact form works
   - [ ] Donation modal opens
   - [ ] Mobile responsive

4. **Test Admin Features**
   - [ ] Click "Admin" in footer
   - [ ] Login with password
   - [ ] Go to Gallery
   - [ ] Upload test image
   - [ ] Refresh page (image should stay)
   - [ ] Delete image works
   - [ ] Logout works

5. **Test on Mobile**
   - Open on phone
   - Test navigation
   - Test all features

---

## 🔧 Vercel Configuration Explained

### `vercel.json` Features:

```json
{
  "version": 2,
  "builds": [
    {
      "src": "index.html",
      "use": "@vercel/static"  // Serves as static HTML
    }
  ],
  "routes": [
    {
      "src": "/(.*)",
      "dest": "/index.html"  // All routes go to index.html (SPA)
    }
  ],
  "headers": [
    // Security headers for protection
    // Cache control for performance
  ]
}
```

### Security Headers Added:
- ✅ `X-Content-Type-Options: nosniff`
- ✅ `X-Frame-Options: DENY`
- ✅ `X-XSS-Protection: 1; mode=block`
- ✅ `Referrer-Policy: strict-origin-when-cross-origin`
- ✅ `Permissions-Policy` for camera/mic/location

---

## 🎨 Final Touches Added

### Performance Optimizations:
- ✅ Preconnect to CDNs
- ✅ Loading screen with spinner
- ✅ Smooth fade-in animation
- ✅ Optimized React production builds
- ✅ Image rendering optimization

### Security Enhancements:
- ✅ Security headers via vercel.json
- ✅ XSS protection
- ✅ Clickjacking protection
- ✅ Content sniffing protection

### User Experience:
- ✅ Professional loading screen
- ✅ Smooth transitions
- ✅ Fast initial load
- ✅ Mobile optimized

---

## 📊 Post-Deployment Checklist

### Immediate (Day 1):
- [ ] Domain is live and accessible
- [ ] SSL certificate is active (https)
- [ ] All pages load correctly
- [ ] Admin login works
- [ ] Gallery upload/delete works
- [ ] Mobile version works
- [ ] Contact form shows notifications

### Within Week 1:
- [ ] Submit to Google Search Console
- [ ] Add Google Analytics (optional)
- [ ] Test on multiple browsers
- [ ] Test on multiple devices
- [ ] Share with team for feedback

### Ongoing:
- [ ] Monitor Vercel analytics
- [ ] Update gallery images regularly
- [ ] Respond to contact form messages
- [ ] Keep admin password secure
- [ ] Backup localStorage images periodically

---

## 🔄 Making Updates

### Method 1: Git Push (Recommended)

```bash
# Make changes to index.html
git add index.html
git commit -m "Updated content"
git push

# Vercel auto-deploys! ✅
```

### Method 2: Vercel CLI

```bash
# Make changes
vercel --prod

# Deployed! ✅
```

### Method 3: Vercel Dashboard

1. Go to your project
2. Click "Deployments"
3. Click "Redeploy"

---

## 📱 Custom Domain Examples

Your site will be accessible at:
- ✅ `https://yourdomain.com`
- ✅ `https://www.yourdomain.com`
- ✅ Vercel also provides: `https://your-project.vercel.app`

All URLs will have:
- ✅ Free SSL certificate
- ✅ Global CDN
- ✅ Automatic HTTPS redirect
- ✅ DDoS protection

---

## 🐛 Troubleshooting

### Domain not working?

**Check:**
1. DNS records are correct
2. Wait 15-30 minutes for propagation
3. Clear browser cache
4. Try incognito mode
5. Check https://www.whatsmydns.net

### SSL certificate not issued?

**Solution:**
- Wait 5-10 minutes after DNS propagation
- Vercel auto-issues SSL
- Check Vercel dashboard for status

### Images not loading?

**Check:**
1. localStorage is enabled in browser
2. Not in incognito mode (localStorage disabled)
3. Browser data not cleared
4. Check browser console (F12) for errors

### Admin login not working?

**Check:**
1. Password is correct (case-sensitive)
2. Changed password in code (line ~269)
3. Deployed latest version
4. Clear browser cache

---

## 💰 Vercel Pricing

### Free Tier (Perfect for you):
- ✅ Unlimited deployments
- ✅ 100GB bandwidth/month
- ✅ Automatic SSL
- ✅ Global CDN
- ✅ Custom domains
- ✅ Automatic HTTPS
- ✅ DDoS protection

**Your website will run FREE forever!** 🎉

---

## 📈 Optional: Add Analytics

### Google Analytics (Free):

1. **Get Tracking ID**
   - Go to https://analytics.google.com
   - Create property
   - Get tracking ID (G-XXXXXXXXXX)

2. **Add to Website**
   Edit `index.html`, add before `</head>`:
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

3. **Deploy Update**
   ```bash
   git add index.html
   git commit -m "Added Google Analytics"
   git push
   ```

---

## 🎯 Success Checklist

Your deployment is successful when:

- [x] Website loads at your custom domain
- [x] HTTPS is active (padlock icon)
- [x] All pages work correctly
- [x] Mobile responsive
- [x] Admin features work
- [x] Images persist after refresh
- [x] Fast loading time
- [x] No console errors

---

## 📞 Support

### Vercel Support:
- Documentation: https://vercel.com/docs
- Community: https://github.com/vercel/vercel/discussions
- Email: support@vercel.com

### Your Website:
- Email: ACTIVEFORYOUTRUST@GMAIL.COM
- Check ADMIN_GUIDE.md for admin features
- Check README.md for general info

---

## 🎉 Congratulations!

Your Active For You Charitable Trust website is now:
- ✅ Live on your custom domain
- ✅ Secured with HTTPS
- ✅ Globally distributed via CDN
- ✅ Optimized for performance
- ✅ Ready to make an impact!

**Share your website and start making a difference!** 🌟

---

**Deployment Date:** October 4, 2024  
**Platform:** Vercel  
**Status:** Production Ready ✅  
**Performance:** Optimized ⚡  
**Security:** Enhanced 🔒
