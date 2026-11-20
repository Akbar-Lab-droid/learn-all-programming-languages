# HTML & CSS — Complete Mini-Course

## 1. What Are HTML & CSS?
HTML is the structure of a web page; CSS is how it looks. Together they are the foundation of every website.

## 2. Your First Page
```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>My First Page</title>
</head>
<body>
  <h1>Hello, World!</h1>
  <p>This is my first web page.</p>
</body>
</html>
```

## 3. Essential HTML Tags
```html
<h1>Heading 1</h1> ... <h6>Heading 6</h6>
<p>Paragraph</p>
<a href="https://example.com">A link</a>
<img src="photo.jpg" alt="A photo">
<ul><li>List item</li></ul>
<input type="text" placeholder="Your name">
<button>Click me</button>
```

## 4. Forms
```html
<form>
  <label>Name: <input type="text" name="name"></label>
  <label>Email: <input type="email" name="email"></label>
  <button type="submit">Send</button>
</form>
```

## 5. CSS Basics
```css
h1 {
  color: #2563eb;
  font-size: 32px;
  text-align: center;
}

.card {
  background: white;
  padding: 20px;
  border-radius: 12px;
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
}
```

## 6. The Box Model
Every element is a box: content → padding → border → margin.
```css
.box {
  width: 200px;
  padding: 16px;   /* inside space */
  border: 2px solid black;
  margin: 16px;    /* outside space */
}
```

## 7. Flexbox (Layout)
```css
.container {
  display: flex;
  justify-content: center;  /* horizontal */
  align-items: center;      /* vertical */
  gap: 16px;
}
```

## 8. Grid (Layout)
```css
.grid {
  display: grid;
  grid-template-columns: 1fr 1fr 1fr;  /* 3 equal columns */
  gap: 16px;
}
```

## 9. Responsive Design
```css
/* On small screens, stack everything in one column */
@media (max-width: 600px) {
  .grid { grid-template-columns: 1fr; }
}
```

## 10. Common Mistakes
- Forgetting `<!DOCTYPE html>` (breaks layout in old browsers)
- Using `<div>` for everything — use semantic tags (`<header>`, `<main>`, `<footer>`)
- Fixed pixel widths everywhere instead of responsive units
- Inline styles instead of a stylesheet

## 11. Practice Exercises
1. Build a personal bio page with a photo, links, and a list of skills.
2. Recreate the layout of your favorite website's homepage.
3. Make a landing page for a product with a form and a responsive grid.

## 12. Next Steps
- Full free course: https://www.freecodecamp.org/learn/2022/responsive-web-design/
- Reference: https://developer.mozilla.org/en-US/docs/Web/HTML
- Code examples in this repo: [`examples/html-css/`](../examples/html-css/)
