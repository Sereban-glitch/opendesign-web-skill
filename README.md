# 🎨 OpenDesign Web · AI Art-Director & Web Factory Skill

> **Universal Agent Skill for OpenCode** · Transforms 100+ design systems from [OpenDesign](https://github.com/nexu-io/open-design) into lightning-fast, zero-dependency landing pages, product showcases, and Telegram Mini Apps.

[![OpenCode Skill](https://img.shields.io/badge/OpenCode-Skill-blue.svg)](https://opencode.ai)
[![Design Systems](https://img.shields.io/badge/OpenDesign-100%2B%20Styles-success.svg)](https://github.com/nexu-io/open-design)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

[Русский](#описание-на-русском) · [English](#english-description)

---

## Описание на русском

### Что это такое?
**opendesign-web** — это универсальный агентский навык (Agent Skill) для **OpenCode**. Он работает как персональный **арт-директор и фабрика сайтов**. 

Вам больше не нужно вручную верстать сайты или запускать тяжёлые серверные движки OpenDesign (Node.js/Electron). Вы просто описываете любую свою идею простыми словами — от магазина алтайских трав до сложного юридического сервиса или Telegram-бота, — а агент:
1. Анализирует психологию вашей целевой аудитории.
2. Подбирает 2–3 идеальных стиля из каталога 100+ мировых дизайн-систем OpenDesign.
3. Мгновенно собирает готовый, адаптивный, монолитный HTML5/CSS3 сайт без внешних зависимостей (Zero-Dependency).
4. Разворачивает его на бесплатный GitHub Pages или встраивает в Telegram Mini App.

### ✨ Ключевые возможности
- **100+ Дизайн-систем в кармане:** доступ ко всем стилям экосистемы OpenDesign (*Sleek, Linear, Apple, Warm Editorial, Levels, Supabase, Luxury, Neobrutalism* и др.).
- **Интуитивный подбор:** понимает нетехнические описания (*«хочу магазин родиолы розовой для айтишников»* → предложит неоновый биохакинг `levels` или строгий `sleek`).
- **3 формата на выходе:**
  - 🌟 **Landing Page / Showcase:** продающий сайт с тарифами, отзывами и кнопкой заказа.
  - 📱 **Telegram Mini App (TMA):** мобильный интерфейс для Telegram с поддержкой Haptic Feedback и корзины.
  - 📇 **Micro-Card:** одноэкранная визитка для соцсетей.
- **Zero-Dependency & Сверхскорость:** чистый HTML/CSS, открывается за 0.1–0.2 секунды на любом смартфоне.
- **Мультиплатформенность:** работает на ПК (Linux, macOS, Windows) и на телефоне (Android / Termux).

---

## Быстрая установка (1-Click Install)

На любом устройстве, где установлен OpenCode:

```bash
git clone git@github.com:Sereban-glitch/opendesign-web-skill.git
cd opendesign-web-skill
./install.sh
```

### Зависимость: библиотека стилей OpenDesign
Навык работает в связке со статическими шаблонами OpenDesign. Запускать сервер OpenDesign **не требуется** — нужны только сами файлы стилей.

Если у вас ещё нет репозитория `open-design`, скачайте его легковесную копию:
```bash
git clone --depth 1 https://github.com/nexu-io/open-design.git ~/projects/open-design
```

---

## 🎨 Навигатор стилей (Каталог OpenDesign)

| Направление | Стили OpenDesign | Настроение и палитра |
|---|---|---|
| **🌿 Здоровье, травы, органика** | `warm-editorial`, `paper`, `canva`, `friendly`, `cafe` | Льняной, травяной зелёный, крафт, природа |
| **⚡ Биохакинг, фитнес, энергия** | `levels`, `energetic`, `nike`, `bold`, `sleek` | Глубокий графит, кислотный лайм, драйв |
| **⚖️ Юристы, суды, консалтинг** | `sleek`, `refined`, `elegant`, `corporate`, `wise` | Тёмно-синий океан, циан, строгая геометрия |
| **💻 IT, AI, SaaS, боты** | `linear-app`, `supabase`, `cursor`, `mistral-ai`, `vercel` | Иссиня-чёрный, неоновые акценты, технологичность |
| **💎 Премиум, авто, лакшери** | `luxury`, `elegant`, `spacex`, `tesla`, `bmw-m`, `ferrari` | Чёрный, золото, карбон, статус |
| **🛒 E-Commerce, магазины** | `shopify`, `apple`, `revolut`, `wechat`, `airbnb` | Крупные карточки товаров, быстрый чекаут |
| **📊 Дашборды, аналитика, крипта** | `trading-terminal`, `hud`, `dashboard`, `clickhouse` | Моноширинные шрифты, терминальные сетки |

---

## Примеры использования в OpenCode

Просто скажите вашему агенту:

```text
«Слушай, я придумал магазин родиолы розовой — природный адаптоген для энергии и продуктивности. Подбери стиль и сделай витрину с ценами!»
```

или

```text
«Сделай визитку для юридического бюро в стиле Sleek с разбором выигранных дел и кнопкой записи в Telegram.»
```

или

```text
«Собери Telegram Mini App для строительных смет в стиле Linear.»
```

---

## English Description

**opendesign-web** is a portable Agent Skill for OpenCode that connects AI coding assistants directly to the curated catalog of 100+ design systems from OpenDesign.

### Why this approach?
Running the full OpenDesign desktop/web daemon consumes 1.5–2.5 GB of RAM. This companion skill extracts pure design tokens and component layouts directly, building self-contained, lightning-fast web pages and Telegram WebApps with **zero external dependencies** and deploying them directly to free hosts like GitHub Pages.

### Installation
```bash
git clone git@github.com:Sereban-glitch/opendesign-web-skill.git
cd opendesign-web-skill
chmod +x install.sh && ./install.sh
```

---

## License
MIT License © 2026 [Sereban-glitch](https://github.com/Sereban-glitch).  
Design systems and inspiration courtesy of [OpenDesign](https://github.com/nexu-io/open-design) by nexu-io.
