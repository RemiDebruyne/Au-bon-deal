# Brief Création BDD PostgreSQL pour la plateforme e-commerce "AuBonDeal" 🚀

## Table of content

<li><a href="/README.md/"> Brief explanation</a> </li>
<li><a href="/doc/management-rules.md"> Management rules </a></li>
<li><a href="#the-merise-methodology">MERISE methodology</a></li>
<!-- <li><a href="">RBAC</a></li>  -->
<li><a href="/database-arch/AuBonDeal.sql">Database</a></li>

## Brief explanation
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
