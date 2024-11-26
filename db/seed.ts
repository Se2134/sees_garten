import { db, Plants, Animals, Equipment, MyProjects } from 'astro:db';

// https://astro.build/db/seed
export default async function seed() {

	await db.insert(Plants).values([
		{name: "Monstera Deliciosa", type: "aeroid",},
		{name: "Philodendron Verrucosum", type: "aeroid",}
	])

	await db.insert(Animals).values([
		{name: "Honiggurami", type: "labyrinthfish",},
		{name: "Perlhuhnbärbling", type: "rasbora",}
	])

	await db.insert(Equipment).values([
		{name: "Aquarium 120L", type: "container",},
	])

	await db.insert(MyProjects).values([
		{name: "Altes AQ 2.0", type: "aquarium"},
	])
}
