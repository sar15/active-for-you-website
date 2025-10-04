# 🎨 Customization Guide

This guide helps you customize your Active For You Charitable Trust website safely and effectively.

## 📝 Table of Contents

1. [Updating Text Content](#updating-text-content)
2. [Changing Images](#changing-images)
3. [Modifying Colors](#modifying-colors)
4. [Adding Team Members](#adding-team-members)
5. [Updating Contact Information](#updating-contact-information)
6. [Gallery Management](#gallery-management)
7. [Social Media Links](#social-media-links)
8. [Adding New Programs](#adding-new-programs)

---

## 📄 Updating Text Content

### Organization Name
Search for `Active For You` and replace with your organization name.

**Locations to update:**
- Page title (line ~16)
- Navigation logo (line ~350)
- Footer (line ~500)
- All meta tags

### Tagline/Slogan
Search for `Empowering Communities, Creating Hope` and replace with your tagline.

### About Section
Find the `AboutPage` component (around line 400) and update:
- **Our Story**: Update the paragraphs describing your organization
- **Mission Statement**: Update mission text
- **Vision Statement**: Update vision text
- **Values**: Update values description

### Statistics
Find the statistics section in `HomePage` (around line 380):
```javascript
{ number: "50+", label: "Medical Camps", icon: <Stethoscope /> }
```
Update the numbers and labels to match your organization's impact.

---

## 🖼️ Changing Images

### Gallery Images

**Location:** Around line 220

```javascript
const [galleryImagesData, setGalleryImagesData] = useState([
    { 
        id: 1, 
        category: "Medical Camp", 
        src: "https://your-image-url.com/image.jpg" 
    },
    // Add more images...
]);
```

**Best Practices:**
- Use high-quality images (1920x1080 or higher)
- Compress images before uploading (use tinypng.com)
- Use HTTPS URLs
- Recommended services: Unsplash, Cloudinary, ImgBB

### Team Member Photos

**Location:** Around line 230

```javascript
const teamMembers = [
    { 
        name: "Your Name",
        role: "Your Position",
        image: "https://your-image-url.com/photo.jpg",
        social: { 
            linkedin: "https://linkedin.com/in/yourprofile", 
            twitter: "https://twitter.com/yourhandle"
        }
    },
];
```

**Image Requirements:**
- Square aspect ratio (1:1)
- Minimum 400x400px
- Professional headshot
- Good lighting and background

### Hero Image

**Location:** HomePage component (around line 370)

```javascript
<img src="https://images.unsplash.com/photo-1532629345422-7515f3d16bb6" 
     alt="Description" />
```

Replace the `src` URL with your hero image.

---

## 🎨 Modifying Colors

The website uses Tailwind CSS color classes. Here's how to change the color scheme:

### Primary Color (Currently Emerald)

**Find and Replace:**
- `emerald-50` → `your-color-50`
- `emerald-100` → `your-color-100`
- `emerald-400` → `your-color-400`
- `emerald-500` → `your-color-500`
- `emerald-600` → `your-color-600`

### Secondary Color (Currently Blue)

**Find and Replace:**
- `blue-50` → `your-color-50`
- `blue-100` → `your-color-100`
- `blue-400` → `your-color-400`
- `blue-500` → `your-color-500`
- `blue-600` → `your-color-600`

### Available Tailwind Colors:
- `red`, `orange`, `amber`, `yellow`, `lime`, `green`
- `emerald`, `teal`, `cyan`, `sky`, `blue`, `indigo`
- `violet`, `purple`, `fuchsia`, `pink`, `rose`

### Example: Change to Purple Theme

1. Find: `from-emerald-600 to-blue-600`
2. Replace: `from-purple-600 to-pink-600`

---

## 👥 Adding Team Members

**Location:** Around line 230

### Step 1: Add to Array

```javascript
const teamMembers = [
    // Existing members...
    { 
        name: "New Member Name",
        role: "Their Position",
        image: "https://image-url.com/photo.jpg",
        social: { 
            linkedin: "https://linkedin.com/in/profile", 
            twitter: "https://twitter.com/handle"
        }
    }
];
```

### Step 2: Upload Photo
- Use a professional headshot
- Square format (400x400px minimum)
- Upload to image hosting service
- Use the URL in the `image` field

### Step 3: Test
- Navigate to Team page
- Verify image loads
- Check social links work

---

## 📞 Updating Contact Information

### Phone Number

**Find:** `9925255729`
**Replace with:** Your phone number

**Locations:**
- Contact page (2 places)
- Footer
- Meta tags (if applicable)

### Email Address

**Find:** `ACTIVEFORYOUTRUST@GMAIL.COM`
**Replace with:** Your email

**Locations:**
- Contact page
- Footer
- Meta tags

### Physical Address

**Find:** `Ahmedabad, Gujarat, India`
**Replace with:** Your address

**Location:** Contact page

### UPI Payment ID (Donation)

**Find:** `9925255729@paytm`
**Replace with:** Your UPI ID

**Location:** DonationModal component (around line 310)

---

## 🖼️ Gallery Management

### Adding Default Images

**Location:** Line ~220

```javascript
{ 
    id: 9, // Use unique ID
    category: "Event Name", 
    src: "https://your-image-url.com/image.jpg" 
}
```

### User Upload Feature

The gallery has a built-in upload feature that:
- ✅ Validates file types (images only)
- ✅ Limits file size (5MB max)
- ✅ Shows error messages
- ✅ Stores images temporarily (session only)

**Note:** Uploaded images are NOT permanently saved. They disappear on page refresh.

### To Make Uploads Permanent:

You would need to add a backend service (beyond scope of this single-file app). Options:
- Firebase Storage
- Cloudinary API
- AWS S3
- Custom backend server

---

## 🔗 Social Media Links

### Navigation Social Links

**Location:** Footer component (around line 500)

```javascript
<a href="https://facebook.com" target="_blank" rel="noopener noreferrer">
    <Facebook className="h-5 w-5" />
</a>
```

**Replace:**
- `https://facebook.com` → Your Facebook page URL
- `https://instagram.com` → Your Instagram profile
- `https://twitter.com` → Your Twitter profile
- `https://linkedin.com` → Your LinkedIn page

### Team Member Social Links

**Location:** teamMembers array (around line 230)

```javascript
social: { 
    linkedin: "https://linkedin.com/in/yourprofile", 
    twitter: "https://twitter.com/yourhandle"
}
```

---

## 🎯 Adding New Programs

**Location:** programs array (around line 210)

### Step 1: Choose an Icon

Available icons in the code:
- `<Stethoscope />` - Healthcare
- `<Users />` - Community/People
- `<Book />` - Education
- `<Sprout />` - Environment
- `<Heart />` - General charity

### Step 2: Add Program

```javascript
const programs = [
    // Existing programs...
    { 
        icon: <Book className="h-10 w-10" />, 
        title: "Your Program Name", 
        description: "Detailed description of what this program does and its impact.",
        color: "from-indigo-500 to-indigo-600", 
        bgColor: "from-indigo-50 to-indigo-100", 
        textColor: "text-indigo-600" 
    }
];
```

### Step 3: Color Combinations

Choose matching colors:
- **Blue**: `from-blue-500 to-blue-600`, `from-blue-50 to-blue-100`, `text-blue-600`
- **Green**: `from-green-500 to-green-600`, `from-green-50 to-green-100`, `text-green-600`
- **Purple**: `from-purple-500 to-purple-600`, `from-purple-50 to-purple-100`, `text-purple-600`
- **Pink**: `from-pink-500 to-pink-600`, `from-pink-50 to-pink-100`, `text-pink-600`
- **Orange**: `from-orange-500 to-orange-600`, `from-orange-50 to-orange-100`, `text-orange-600`

---

## 🔒 What NOT to Change

### Critical Code (DO NOT MODIFY):

❌ **State Management**
```javascript
const [activePage, setActivePage] = useState('home');
const [mobileMenuOpen, setMobileMenuOpen] = useState(false);
// etc...
```

❌ **Navigation Logic**
```javascript
const navigateToPage = (page) => {
    setActivePage(page);
    // ...
}
```

❌ **Conditional Rendering**
```javascript
{activePage === 'home' && <HomePage />}
```

❌ **React Render Method**
```javascript
const root = ReactDOM.createRoot(container);
root.render(<CharityWebsite />);
```

---

## ✅ Testing Your Changes

After making changes:

1. **Save the file**
2. **Open in browser** (or refresh if already open)
3. **Test all pages** - Navigate through each page
4. **Test mobile view** - Resize browser or use device
5. **Check console** - Press F12, look for errors
6. **Test forms** - Try submitting contact form
7. **Test uploads** - Try uploading an image to gallery

---

## 🆘 Troubleshooting

### Changes Not Showing
- Hard refresh: `Ctrl+Shift+R` (Windows) or `Cmd+Shift+R` (Mac)
- Clear browser cache
- Try incognito/private mode

### Broken Layout
- Check for missing closing tags
- Verify Tailwind class names are correct
- Look for JavaScript errors in console (F12)

### Images Not Loading
- Verify URL is correct and accessible
- Ensure URL uses HTTPS
- Check image file size (should be < 5MB)

### Colors Look Wrong
- Verify Tailwind color name is correct
- Check all three color properties match (color, bgColor, textColor)

---

## 💡 Tips for Best Results

1. **Make Small Changes**: Test after each change
2. **Keep Backups**: Save a copy before major edits
3. **Use Version Control**: Consider using Git
4. **Test Thoroughly**: Check on multiple devices
5. **Optimize Images**: Compress before uploading
6. **Consistent Naming**: Use clear, descriptive names
7. **Comment Your Code**: Add notes for future reference

---

## 📚 Resources

- **Tailwind CSS Docs**: https://tailwindcss.com/docs
- **React Docs**: https://react.dev
- **Image Compression**: https://tinypng.com
- **Free Images**: https://unsplash.com
- **Color Picker**: https://tailwindcss.com/docs/customizing-colors

---

**Need Help?** Contact: ACTIVEFORYOUTRUST@GMAIL.COM

**Happy Customizing!** 🎨
