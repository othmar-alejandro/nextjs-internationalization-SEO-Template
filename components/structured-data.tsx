import { useTranslations } from 'next-intl';

export default function StructuredData() {
  const t = useTranslations('Metadata');

  const jsonLd = {
    '@context': 'https://schema.org',
    '@type': 'WebSite',
    name: t('siteName'),
    url: t('url'),
    potentialAction: {
      '@type': 'SearchAction',
      target: `${t('url')}/search?q={search_term_string}`,
      'query-input': 'required name=search_term_string',
    },
  };

  return (
    <script
      type="application/ld+json"
      dangerouslySetInnerHTML={{ __html: JSON.stringify(jsonLd) }}
    />
  );
}
