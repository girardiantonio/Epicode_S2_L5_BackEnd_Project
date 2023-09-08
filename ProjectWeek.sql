SELECT COUNT(*) AS NrVerbaliTrascritti
FROM Verbale;

SELECT Anagrafica.Cognome, Anagrafica.Nome, COUNT(Verbale.idverbale) AS NrVerbaliPerAnagrafe
FROM Anagrafica
INNER JOIN Verbale ON Anagrafica.idanagrafica = Verbale.idanagrafica
GROUP BY Anagrafica.Cognome, Anagrafica.Nome;

SELECT Violazione.descrizione AS TipoViolazione, COUNT(Verbale.idverbale) AS NrVerbaliPerTipo
FROM Verbale
INNER JOIN Violazione ON Verbale.idviolazione = Violazione.idviolazione
GROUP BY Violazione.descrizione;

SELECT Anagrafica.Cognome, Anagrafica.Nome, SUM(Verbale.DecurtamentoPunti) AS SommaPuntiDecurtati
FROM Anagrafica
LEFT JOIN Verbale ON Anagrafica.idanagrafica = Verbale.idanagrafica
GROUP BY Anagrafica.Cognome, Anagrafica.Nome;

SELECT Anagrafica.Cognome, Anagrafica.Nome, Verbale.DataViolazione, Verbale.IndirizzoViolazione, Verbale.Importo, Verbale.DecurtamentoPunti
FROM Anagrafica
INNER JOIN Verbale ON Anagrafica.idanagrafica = Verbale.idanagrafica
WHERE Anagrafica.Citta = 'Palermo';

SELECT Anagrafica.Cognome, Anagrafica.Nome, Verbale.IndirizzoViolazione, Verbale.DataViolazione, Verbale.Importo, Verbale.DecurtamentoPunti
FROM Anagrafica
INNER JOIN Verbale ON Anagrafica.idanagrafica = Verbale.idanagrafica
WHERE Verbale.DataViolazione BETWEEN '2009-02-01' AND '2009-07-31';

SELECT Anagrafica.Cognome, Anagrafica.Nome, SUM(Verbale.Importo) AS TotaleImporti
FROM Anagrafica
INNER JOIN Verbale ON Anagrafica.idanagrafica = Verbale.idanagrafica
GROUP BY Anagrafica.Cognome, Anagrafica.Nome;

SELECT *
FROM Anagrafica
WHERE Citta = 'Palermo';

SELECT NominativoAgente, COUNT(*) AS NumeroViolazioni
FROM Verbale
GROUP BY NominativoAgente;

SELECT Anagrafica.Cognome, Anagrafica.Nome, Verbale.IndirizzoViolazione, Verbale.DataViolazione, Verbale.Importo, Verbale.DecurtamentoPunti
FROM Anagrafica
INNER JOIN Verbale ON Anagrafica.idanagrafica = Verbale.idanagrafica
WHERE Verbale.DecurtamentoPunti > 5;

SELECT Anagrafica.Cognome, Anagrafica.Nome, Verbale.IndirizzoViolazione, Verbale.DataViolazione, Verbale.Importo, Verbale.DecurtamentoPunti
FROM Anagrafica
INNER JOIN Verbale ON Anagrafica.idanagrafica = Verbale.idanagrafica
WHERE Verbale.Importo > 400.00;