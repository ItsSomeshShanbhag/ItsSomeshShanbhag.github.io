# Business Analyst Portfolio Documentation

**Overview**

This document details the technical structure and configuration for the personal portfolio website of Somesh Shanbhag. This solution serves as a high performance digital resume built using a single file architecture for ease of deployment and maintenance.

**Technical Stack**

* **Core Framework** React 18 via CDN

* **Transpiler** Babel Standalone

* **Styling** Tailwind CSS

* **Animation** Framer Motion

* **Icons** Lucide Icons

* **Email Service** EmailJS

**Architecture Description**

The application operates as a single HTML document containing embedded React logic. This approach eliminates the need for complex build pipelines like Webpack or Vite. All libraries load dynamically via Content Delivery Networks which ensures the site remains lightweight and easy to host on static platforms.

**Key Components**

* **AudioWidget**
  A custom audio controller that manages background music playback. This component features a CSS driven visualizer animation that activates when music plays. It includes a smart attention mechanic that blinks the mute button to alert users if audio is muted initially. The volume slider uses a dynamic linear gradient to visually represent current levels.

* **Hero Section**
  The landing area utilizes staggered animations to introduce the persona. The name transitions in first followed by the biography and call to action buttons. This sequence creates a narrative flow for first time visitors.

* **Project Gallery**
  The analysis section features a horizontal scrolling container. This component maps vertical mouse wheel events to horizontal scroll movements for desktop users while maintaining native touch swipe behavior for mobile devices.

* **Contact Form**
  The form integrates directly with EmailJS to send messages without a backend server. It handles submission states including sending success and error feedback.

**Configuration Instructions**

**1. Audio Setup**
Ensure a file named `background_music.mp3` exists in an `assets` folder at the root level. The widget automatically attempts to play this file and handles browser autoplay policies gracefully.

**2. Email Configuration**
Locate the `EMAILJS_CONFIG` constant within the script tag. Replace the `SERVICE_ID` `TEMPLATE_ID` and `PUBLIC_KEY` values with credentials from your EmailJS dashboard.

**3. Project Data**
The `projects` array contains all portfolio entries. Modify the objects within this array to update titles descriptions tech stacks and links. The `status` field controls the visual badge color and button availability.

**4. Gallery Images**
The `galleryImages` array manages the photo strip in the Discovery section. Update the `src` and `description` fields to change the visible images and their lightbox captions.

**Deployment**

Upload the `index.html` file and the `assets` folder containing your images and music to any static hosting provider. GitHub Pages or Netlify are recommended for optimal performance. No compilation or build commands are necessary.

**Asset Requirements**

* **Images** Place all images in an `images` folder or update paths to point to external URLs.

* **Audio** Ensure `background_music.mp3` is optimized for web playback to reduce load times.

**Browser Compatibility**

The site utilizes modern CSS properties and ES6 JavaScript syntax. It is fully compatible with all modern browsers including Chrome Firefox Safari and Edge. Mobile responsiveness is handled via Tailwind utility classes to ensure layout stability across phones tablets and desktops.
