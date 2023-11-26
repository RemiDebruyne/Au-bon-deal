

# Brief Création d'une BDD <img src="https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white"> pour la plateforme e-commerce "AuBonDeal" 🚀


## Table of content

<li><a href="#brief-explanation"> Brief explanation</a> </li>
<li><a href="/doc/management-rules.md"> Management rules </a></li>
<li><a href="#the-merise-methodology">MERISE methodology</a></li>
<!-- <li><a href="">RBAC</a></li>  -->
<li><a href="/database-arch/AuBonDeal.sql">Database</a></li>

## Brief explanation
As a first note, the original brief is in french, which is why the title is french. However, I decided to deliver a repo redacted in english as I think this is both a good practice in the industry and a good exercise over all.

For this brief, we were recquired to interpret an MCD and MLD into an MPD able to handle CRUD operations. The database must follow integrity constraints with a particular intention to performance. You can see both MCD and MLD used below :

### MCD
<img src="/database-arch/mcd.png">

### MLD
<img src="/database-arch/mld.png">


## The MERISE methodology
MERISE is an Information System Design and Development methodology widely used in France.
- The framework of MERISE has three cycles: abstraction cycle, approval cycle and life cycle. The abstraction cycle uses the three database levels <a href="https://louisvandevelde.be/index.php?dos=my&fic=meris">(conceptual, logical and physical)</a>.
- The approval cycle recognizes the necessity of identifying decision points during the development of the information system. 
- The life cycle consists of (long range) planning, initial study, detailed study, implementation, launching and maintenance.

A system of tools has been defined to support these cycles.


## What I would like to improve on

- Better management rules
- Make an RBAC
    - Tailor roles and permissions in a security oriented way
- Make sure I handled security properly for password
    - pgcrypto is installed and *should* be able crypt password when entered in the database
- Make sure the integrity is handled properly for :
    - product_price
    - product_quantity
- Implement a audit logs