FROM python:3.12-slim

WORKDIR /app

# Create data directory for CSV exports
RUN mkdir -p /data/outbank_exports

# Install from PyPI
RUN pip install --no-cache-dir mcp-outbank

ENV MCP_HOST=0.0.0.0
ENV MCP_PORT=6668
ENV MCP_TRANSPORT=http

EXPOSE 6668

CMD ["mcp-outbank"]
