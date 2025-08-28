# ===== build stage =====
FROM node:16-alpine AS build
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
# אם יש לך "homepage": "/emoji-search/" ב-package.json ועדיף לשרת ב-root,
# שנה אותו ל- "." או מחק את השדה לגמרי, ואז:
RUN npm run build

# ===== run stage =====
FROM nginx:alpine
# נגיש את הבילד
COPY --from=build /app/build/ /usr/share/nginx/html/
# nginx כבר משרת מ-/usr/share/nginx/html על פורט 80
EXPOSE 80