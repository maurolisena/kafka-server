# Usar la imagen oficial de Apache Kafka
FROM confluentinc/cp-kafka:latest

# Definir variables de entorno necesarias
ENV KAFKA_ZOOKEEPER_CONNECT=zookeeper:2181 \
    KAFKA_ADVERTISED_LISTENERS=PLAINTEXT://localhost:9092 \
    KAFKA_LISTENERS=PLAINTEXT://0.0.0.0:9092 \
    KAFKA_OFFSETS_TOPIC_REPLICATION_FACTOR=1 \
    KAFKA_BROKER_ID=1 \
    ALLOW_PLAINTEXT_LISTENER=yes

# Exponer el puerto de Kafka
EXPOSE 9092

# Comando de inicio
CMD ["/etc/confluent/docker/run"]
