FROM node:20-slim
WORKDIR /app
RUN npm install -g supergateway @railway/cli
ENV PORT=8080
ENV RAILWAY_API_TOKEN=""
EXPOSE 8080
CMD ["sh", "-c", "railway login --browserless && supergateway --stdio 'npx -y @railway/mcp-server' --port $PORT"]
