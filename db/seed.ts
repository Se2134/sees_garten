import { db, Plants, Animals, Equipment, MyProjects } from 'astro:db';

// https://astro.build/db/seed
export default async function seed() {

	await db.insert(Plants).values([
		{name: "Monstera Deliciosa db", type: "aeroid",},
		{name: "Monsti", type: "aeroid",}
	])

	await db.insert(Animals).values([
		{name: "Monstera Deliciosa db", type: "aeroid",},
		{name: "Monsti", type: "aeroid",}
	])

	await db.insert(Equipment).values([
		{name: "Monstera Deliciosa db", type: "aeroid",},
		{name: "Monsti", type: "aeroid",}
	])

	await db.insert(MyProjects).values([
		{name: "Monstera Deliciosa db", type: "aeroid"},
		{name: "Monsti", type: "aeroid"}
	])
}
