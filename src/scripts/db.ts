import { createClient, type ResultSet } from '@libsql/client';
import "dotenv/config";

export const turso = createClient({
  //url: process.env.ASTRO_DB_REMOTE_URL!,

  //local development database:
  url: "file:db\\sees_garten.db",
  authToken: process.env.ASTRO_DB_APP_TOKEN!,
});

// converts a ResultSet into an Object
export function rowsToObject(result:ResultSet){
  return result.rows.map(row => {
    const obj: { [key: string]: any } = {};
    result.columns.forEach((col, i) => obj[col] = row[i]);
    return obj;
  });
}