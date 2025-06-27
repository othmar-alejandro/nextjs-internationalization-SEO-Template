# Next.js Internationalization & SEO Template

This is a complete Next.js template with internationalization (i18n) and advanced SEO features using `next-intl` v4.0. Use this template as a starting point for all your multilingual Next.js applications.

This template provides a production-ready foundation for building multilingual Next.js applications. It includes path-based routing, automatic locale detection, and dynamic metadata for optimal SEO. The structure is designed to be easily extensible, allowing you to add new languages and content with minimal effort.

## 🌐 Features

- ✅ **Path-based routing** (`/en/`, `/es/`)
- ✅ **Automatic locale detection** from browser language
- ✅ **SEO-friendly URLs** with locale prefixes
- ✅ **Dynamic Metadata** for unique titles and descriptions
- ✅ **JSON-LD Structured Data** for rich snippets
- ✅ **OpenGraph & Twitter Cards** for social sharing
- ✅ **TypeScript support** with strict typing
- ✅ **Server-side rendering** compatible
- ✅ **Easy to extend** with more languages

## 📁 Template Structure

```
nextjs-i18n-template/
├── app/
│   ├── [locale]/
│   │   ├── layout.tsx     # Locale-specific layout with SEO
│   │   └── page.tsx       # Main page with translations
│   └── layout.tsx         # Root layout (pass-through)
├── components/
│   └── structured-data.tsx # JSON-LD component
├── i18n/
│   ├── routing.ts         # Locale configuration
│   └── request.ts         # Message loading logic
├── messages/
│   ├── en.json           # English translations with metadata
│   └── es.json           # Spanish translations with metadata
├── middleware.ts         # Handles routing & locale detection
├── navigation.ts         # Locale-aware navigation components
├── next.config.ts        # Next.js config with next-intl plugin
└── package.json          # Dependencies
```

## 🚀 Getting Started

To get started with this template, you have two options:

### Option 1: Use this repository as a template

1. Click the "Use this template" button on the GitHub repository page.
2. Choose a name for your new repository and create it.
3. Clone your new repository to your local machine:
   ```bash
   git clone https://github.com/your-username/your-new-repository.git
   cd your-new-repository
   ```
4. Install the dependencies:
   ```bash
   npm install
   ```
5. Run the development server:
    ```bash
    npm run dev
    ```

### Option 2: Manually copy the files

If you prefer to integrate these features into an existing project, you can follow the manual steps outlined below.

## 🚀 How to Use This Template

### Method 1: Copy Template to New Project

1. **Copy the template:**
   ```bash
   cp -r /Users/othmarcasilla/nextjs-i18n-template /path/to/your-new-project
   cd /path/to/your-new-project
   ```

2. **Update project name:**
   ```bash
   # Edit package.json and change the "name" field
   nano package.json
   ```

3. **Install dependencies:**
   ```bash
   npm install
   ```

4. **Start development:**
   ```bash
   npm run dev
   ```

### Method 2: Create New Next.js App and Copy Files

1. **Create new Next.js app:**
   ```bash
   npx create-next-app@latest your-project-name --typescript --tailwind --eslint --app
   cd your-project-name
   ```

2. **Install next-intl:**
   ```bash
   npm install next-intl@^4.3.1
   ```

3. **Copy i18n files:**
   ```bash
   cp -r /Users/othmarcasilla/nextjs-i18n-template/i18n .
   cp -r /Users/othmarcasilla/nextjs-i18n-template/messages .
   cp /Users/othmarcasilla/nextjs-i18n-template/middleware.ts .
   cp /Users/othmarcasilla/nextjs-i18n-template/navigation.ts .
   ```

4. **Update next.config.ts:**
   ```typescript
   import type { NextConfig } from "next";
   import createNextIntlPlugin from 'next-intl/plugin';

   const withNextIntl = createNextIntlPlugin('./i18n/request.ts');

   const nextConfig: NextConfig = {
     /* your config options here */
   };

   export default withNextIntl(nextConfig);
   ```

5. **Update app structure:**
   ```bash
   mkdir app/[locale]
   mv app/page.tsx app/[locale]/
   mv app/layout.tsx app/[locale]/
   ```

6. **Create new root layout:**
   ```typescript
   // app/layout.tsx
   export default function RootLayout({children}: {children: React.ReactNode}) {
     return children;
   }
   ```

## 🔧 Customization

### Adding New Languages

1. **Add locale to routing config:**
   ```typescript
   // i18n/routing.ts
   export const routing = defineRouting({
     locales: ['en', 'es', 'fr'], // Add 'fr' for French
     defaultLocale: 'en'
   });
   ```

2. **Create translation file:**
   ```bash
   cp messages/en.json messages/fr.json
   # Edit messages/fr.json with French translations
   ```

### Adding New Translation Keys

1. **Add to all language files:**
   ```json
   // messages/en.json
   {
     "HomePage": {
       "title": "Welcome to Your App",
       "description": "This is a Next.js app with internationalization ready to use!"
     },
     "Navigation": {
       "home": "Home",
       "about": "About",
       "contact": "Contact"
     }
   }
   ```

2. **Use in components:**
   ```typescript
   import {useTranslations} from 'next-intl';

   export default function Navigation() {
     const t = useTranslations('Navigation');
     
     return (
       <nav>
         <Link href="/">{t('home')}</Link>
         <Link href="/about">{t('about')}</Link>
         <Link href="/contact">{t('contact')}</Link>
       </nav>
     );
   }
   ```

### Using Locale-Aware Navigation

```typescript
import {Link} from '../navigation'; // Use this instead of next/link

export default function MyComponent() {
  return (
    <Link href="/about">About</Link> // Automatically becomes /en/about or /es/about
  );
}
```

## 🌍 Supported URLs

- `/` → Redirects to `/en` or `/es` based on browser language
- `/en` → English version
- `/es` → Spanish version
- `/en/about` → English about page
- `/es/about` → Spanish about page

## 📝 Notes

- The template uses next-intl v4.0 with the latest API
- TypeScript is fully configured with proper types
- The middleware handles automatic locale detection
- All navigation components are locale-aware
- SEO-friendly with proper hreflang tags

## 🔗 Useful Links

- [next-intl Documentation](https://next-intl.dev/)
- [Next.js Documentation](https://nextjs.org/docs)
- [TypeScript Documentation](https://www.typescriptlang.org/docs/)

---

**Happy coding! 🚀**

This template saves you hours of setup time for every new multilingual project.
