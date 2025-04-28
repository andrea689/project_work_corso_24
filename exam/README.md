# 📝 Esame Flutter Project Work – App Libreria Personale

**📅 Data:** 28 Aprile 2025  
**⏰ Durata:** 4 ore
**👨‍🏫 Docente:** Andrea Valenzano

---

## 🎯 Obiettivo

Sviluppare una semplice applicazione Flutter per la gestione di una **libreria personale di libri**, utilizzando le tecnologie e gli approcci studiati durante il corso:

- `flutter_bloc` per la gestione dello stato  
- `freezed` per i modelli e lo stato dei Cubit  
- `dio` + `retrofit` per le chiamate HTTP

---

## 🔗 API disponibili

Le API REST sono già pronte e documentate a questo indirizzo:

👉 **[Swagger - Libreria Libri](https://app.swaggerhub.com/apis-docs/andrea-13f/book_library/1.0.0)**

Forniscono un **CRUD completo** sull'entità `Book` con i campi: `objectId`, `title`, `author`, `year`, `genre`.

---

## 📱 Requisiti funzionali dell'app

L'app deve permettere di:

1. **Visualizzare** la lista di tutti i libri
2. **Aggiungere** un nuovo libro (tramite form)
3. **Eliminare** un libro
4. Gestire correttamente stati di loading ed errori

Bonus Facoltativo:

- **Modificare** un libro esistente

---

## 🧩 Requisiti tecnici

- Utilizzare **flutter_bloc** per la logica di business
- Utilizzare **freezed** per:
  - la classe `Book`
  - stati dei Cubit
- Utilizzare **dio** e **retrofit** per l'integrazione con le API REST
- UI semplice ma funzionale, anche solo in stile Material base

---

## 📂 Nome progetto

Il nome del progetto **Flutter** deve essere il vostro **cognome_nome**, ad esempio:  
`flutter create rossi_mario`

---

## ✅ Consegna

- Eseguire il clean del progetto `flutter clean`
- Comprimere l'intera cartella del progetto in un file `.zip`  
- Il file `.zip` deve chiamarsi: `cognome_nome.zip`  
- Caricare il file **su Google Classroom** nella sezione dedicata all’esame

---

## 💡 Suggerimenti

- Crea una struttura modulare: `api`, `app`, `models`, `pages`
- Usa `dart run build_runner watch` per generare i file `freezed` e `retrofit`

---

🛠 Buon lavoro!
