FROM postgres:13
RUN apt-get update -yqq && apt-get install -yqq --no-install-recommends \
  postgresql-13-pgaudit

CMD ["postgres", "-c", "shared_preload_libraries=pgaudit"]
