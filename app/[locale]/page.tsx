import {useTranslations} from 'next-intl';

export default function Home() {
  const t = useTranslations('HomePage');
  
  return (
    <div className="min-h-screen flex items-center justify-center">
      <div className="text-center">
        <h1 className="text-4xl font-bold mb-4">{t('title')}</h1>
        <p className="text-lg text-gray-600">{t('description')}</p>
      </div>
    </div>
  );
}
