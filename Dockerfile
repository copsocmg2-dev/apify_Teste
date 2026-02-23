# Usa a imagem oficial do Apify que já vem com Python e Google Chrome instalados
FROM apify/actor-python-selenium:3.11

# Copia o arquivo de dependências
COPY requirements.txt ./

# Instala as bibliotecas do Python
RUN pip install --no-cache-dir -r requirements.txt

# Copia todo o resto do seu código
COPY . ./

# Comando para iniciar o seu robô
CMD ["python3", "main.py"]
