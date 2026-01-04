FROM node:20-slim

WORKDIR /app

# Install supergateway
RUN npm install -g supergateway

ENV PORT=8080
ENV RAILWAY_API_TOKEN=""

EXPOSE 8080

# Use @jasontanswe/railway-mcp which uses Railway API directly (not CLI)
CMD ["sh", "-c", "supergateway --stdio \"npx -y @jasontanswe/railway-mcp ${RAILWAY_API_TOKEN}\" --port $PORT"]
