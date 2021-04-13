import UserComponent from './TheUserComponent.js';

export default {
    name: "TheAllUsersComponent",

	template: `
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<h1 class="user-message">{{ message }}</h1>
			</div>

			<user v-for="(user, index) in userList" :liveuser="user" :key="index"></user>
		</div>
	</div>
	`,

	created: function() {
        // get all users fron DB
        fetch(`/ums/admin/getusers`)
            .then(res => res.json())
            .then(data => this.userList = data)
            .catch(err => console.error(err));
	},

	data() {
	return (
        {	message: `Who's Using Roku?`, userList: [] }
    )
	},

	components: {
		user: UserComponent
	}
}