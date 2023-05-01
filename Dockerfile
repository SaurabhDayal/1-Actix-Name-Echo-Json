FROM rust as builder
COPY . /app
WORKDIR /app
RUN cargo build --release


FROM gcr.io/distroless/cc
COPY --from=builder /app/target/release/test /app/test
WORKDIR /app
CMD ["./test"]

