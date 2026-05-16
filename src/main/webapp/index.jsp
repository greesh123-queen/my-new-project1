:root {
    --bg: #fafafa;
    --primary: #1a1a1a;
    --accent: #3b82f6;
    --accent-hover: #2563eb;
    --muted: #6b7280;
    --card: #ffffff;
    --surface: #f8fafc;
    --success: #10b981;
    --warning: #f59e0b;
    --radius: 16px;
    --shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06);
    --shadow-hover: 0 20px 25px -5px rgba(0, 0, 0, 0.1), 0 10px 10px -5px rgba(0, 0, 0, 0.04);
    --container: 1280px;
}

* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

body {
    font-family: 'Inter', system-ui, -apple-system, sans-serif;
    color: var(--primary);
    background: var(--bg);
    line-height: 1.6;
    -webkit-font-smoothing: antialiased;
}

.container {
    max-width: var(--container);
    margin: 0 auto;
    padding: 0 24px;
}

/* Enhanced Header */
header {
    background: rgba(255, 255, 255, 0.95);
    backdrop-filter: blur(10px);
    border-bottom: 1px solid rgba(0, 0, 0, 0.1);
    position: sticky;
    top: 0;
    z-index: 50;
}

.header-inner {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 16px 0;
    gap: 24px;
}

.brand {
    font-family: 'Poppins', sans-serif;
    font-weight: 700;
    font-size: 24px;
    color: var(--primary);
}

.brand .accent {
    color: var(--accent);
    background: linear-gradient(135deg, var(--accent), #60a5fa);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
}

/* Improved Navigation */
nav.main-nav ul {
    display: flex;
    gap: 4px;
    list-style: none;
}

nav.main-nav li a {
    display: flex;
    align-items: center;
    gap: 8px;
    padding: 12px 16px;
    border-radius: var(--radius);
    font-weight: 500;
    transition: all 0.2s ease;
    color: var(--primary);
}

nav.main-nav li a:hover {
    background: var(--surface);
    color: var(--accent);
    transform: translateY(-1px);
}

/* Enhanced Search */
.search {
    background: var(--surface);
    border-radius: var(--radius);
    padding: 12px 16px;
    min-width: 280px;
    border: 2px solid transparent;
    transition: all 0.2s ease;
}

.search:focus-within {
    border-color: var(--accent);
    box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
}

.search input {
    border: none;
    background: transparent;
    outline: none;
    width: 100%;
    font-size: 14px;
}

/* Improved Hero Section */
.hero {
    background: linear-gradient(135deg, rgba(59, 130, 246, 0.9), rgba(37, 99, 235, 0.9)),
                url('[images.unsplash.com](https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80)') center/cover;
    color: white;
    padding: 80px 0;
    border-radius: var(--radius);
    margin: 24px;
}

.hero h1 {
    font-family: 'Poppins', sans-serif;
    font-size: 48px;
    font-weight: 700;
    line-height: 1.2;
    margin-bottom: 20px;
}

.hero p {
    font-size: 18px;
    opacity: 0.95;
    max-width: 600px;
    margin-bottom: 32px;
}

/* Enhanced Buttons */
.btn {
    display: inline-flex;
    align-items: center;
    gap: 8px;
    padding: 14px 28px;
    border-radius: var(--radius);
    font-weight: 600;
    text-decoration: none;
    transition: all 0.2s ease;
    border: none;
    cursor: pointer;
}

.btn-primary {
    background: var(--accent);
    color: white;
}

.btn-primary:hover {
    background: var(--accent-hover);
    transform: translateY(-2px);
    box-shadow: var(--shadow-hover);
}

.btn-ghost {
    background: transparent;
    border: 2px solid rgba(255, 255, 255, 0.3);
    color: white;
}

.btn-ghost:hover {
    background: rgba(255, 255, 255, 0.1);
    border-color: rgba(255, 255, 255, 0.5);
}

/* Enhanced Product Cards */
.products {
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
    gap: 24px;
}

.product {
    background: var(--card);
    border-radius: var(--radius);
    overflow: hidden;
    box-shadow: var(--shadow);
    transition: all 0.3s ease;
    position: relative;
}

.product:hover {
    transform: translateY(-4px);
    box-shadow: var(--shadow-hover);
}

.product img {
    width: 100%;
    height: 240px;
    object-fit: cover;
    transition: transform 0.3s ease;
}

.product:hover img {
    transform: scale(1.05);
}

.product-body {
    padding: 20px;
}

.price-row {
    display: flex;
    align-items: center;
    justify-content: space-between;
    margin-top: 12px;
}

.price {
    font-weight: 700;
    font-size: 18px;
    color: var(--primary);
}

.old-price {
    color: var(--muted);
    text-decoration: line-through;
    font-size: 14px;
}

/* Enhanced Categories */
.categories {
    grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
    gap: 16px;
}

.cat-card {
    background: var(--card);
    border-radius: var(--radius);
    padding: 24px;
    text-align: center;
    box-shadow: var(--shadow);
    transition: all 0.3s ease;
    cursor: pointer;
}

.cat-card:hover {
    transform: translateY(-4px);
    box-shadow: var(--shadow-hover);
    background: var(--accent);
    color: white;
}

.cat-card:hover .icon {
    color: white;
}

.cat-card .icon {
    font-size: 32px;
    color: var(--accent);
    margin-bottom: 12px;
    transition: color 0.3s ease;
}

/* Enhanced Deal Section */
.deal {
    background: linear-gradient(135deg, var(--surface), var(--card));
    border-radius: var(--radius);
    overflow: hidden;
    box-shadow: var(--shadow);
}

.deal img {
    width: 50%;
    height: 400px;
    object-fit: cover;
}

.deal .content {
    padding: 40px;
}

.timer {
    display: flex;
    gap: 12px;
    margin: 24px 0;
}

.time-box {
    background: var(--primary);
    color: white;
    padding: 16px;
    border-radius: 12px;
    min-width: 80px;
    text-align: center;
}

.time-box div:first-child {
    font-size: 24px;
    font-weight: 700;
}

/* Enhanced Testimonials */
.testimonial {
    background: var(--card);
    padding: 24px;
    border-radius: var(--radius);
    box-shadow: var(--shadow);
    min-width: 340px;
}

.rating {
    color: #fbbf24;
    font-size: 16px;
    margin-bottom: 16px;
}

/* Enhanced Newsletter */
.newsletter {
    background: linear-gradient(135deg, var(--primary), #2d3748);
    color: white;
    border-radius: var(--radius);
    padding: 48px;
    text-align: center;
}

.newsletter input {
    padding: 16px 24px;
    border-radius: var(--radius);
    border: none;
    width: 320px;
    max-width: 100%;
    font-size: 16px;
}

/* Enhanced Footer */
footer {
    background: var(--surface);
    padding: 48px 0;
    margin-top: 48px;
}

/* Responsive Improvements */
@media (max-width: 768px) {
    .header-inner {
        flex-wrap: wrap;
        gap: 16px;
    }
    
    .search {
        min-width: 100%;
        order: 3;
    }
    
    .hero h1 {
        font-size: 32px;
    }
    
    .deal {
        flex-direction: column;
    }
    
    .deal img {
        width: 100%;
        height: 300px;
    }
    
    .products {
        grid-template-columns: 1fr;
    }
    
    .categories {
        grid-template-columns: repeat(2, 1fr);
    }
}

/* Animation enhancements */
@keyframes fadeIn {
    from {
        opacity: 0;
        transform: translateY(20px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

.product, .cat-card, .testimonial {
    animation: fadeIn 0.6s ease-out;
}

/* Loading states */
.btn:disabled {
    opacity: 0.7;
    cursor: not-allowed;
}

/* Focus states for accessibility */
button:focus-visible,
a:focus-visible,
input:focus-visible {
    outline: 2px solid var(--accent);
    outline-offset: 2px;
}
