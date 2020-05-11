<?php  require "views/partials/header.php"; ?>

<div class="d-flex justify-content-between p-2">
  <div>
    <div class="btn-group">
      <button type="button" class="btn btn-dark">Utilisateurs</button>
      <button type="button" class="btn btn-dark dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        <span class="sr-only">Toggle Dropdown</span>
      </button>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="generer.php">Générer des utilisateurs</a>
        <a class="dropdown-item" href="delete_all_user.php">Tout supprimer</a>
      </div>
    </div>
  </div>
  <div>
    <a class="btn btn-primary" href="?index">Voir l'index</a>
  </div>
</div>


<div class="container">
  <div class="col-md-12 p-5">
    <div class="text-center mb-3">
      <span class="h3">Rechercher un utilisateur</span>
    </div>
    <div class="">
      <form method="get">
        <div class="">
          <input class="form-control" type="text" name="q" value="<?= $search_query ?>"  placeholder="Rechercher un utilisateur">
        </div>
        <div class="mt-3 text-center">
          <button class="btn btn-success" type="submit">Rechercher</button>
        </div>
      </form>
    </div>
  </div>
</div>

<div class="container">
  <div class="col-md-12">

    <?php if($show_index == false): ?>
    <table class="table">
      <thead>
        <tr>
          <th scope="col">Nom</th>
          <th scope="col">Prénom</th>
        </tr>
      </thead>
      <tbody>
        <?php foreach($users as $user): ?>
        <tr>
          <td class="text-primary"><?= $user->name ?></td>
          <td><?= $user->surname ?></td>
        </tr>
        <?php endforeach ?>
      </tbody>
    <?php else: ?>
      <div class="font-weight-bold h2">
        Index de recherche
      </div>
      <table class="table">
        <thead>
          <tr>
            <th scope="col">Nom & Prénom</th>
            <th scope="col">Mots clés</th>
          </tr>
        </thead>
        <tbody>
          <?php foreach($index as $row): ?>
          <tr>
            <td class="text-primary"><?= $row["user_fullname"] ?></td>
            <td><?= $row["keywords"] ?></td>
          </tr>
          <?php endforeach ?>
        </tbody>
    <?php endif; ?>
    </table>
  </div>
</div>

<?php  require "views/partials/footer.php"; ?>
