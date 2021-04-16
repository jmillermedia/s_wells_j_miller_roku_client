import UserComponent from './TheUserComponent.js';

export default {
    name: "TheAllUsersComponent",

    template: `
	<div class="container user-container">
	<h1 class="user-message">{{ message }}</h1>
		<div class="usersSection">
			<div class="user" >
				
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
        return ({ message: `Who's Using Roku?`, userList: [] })
    },

    components: {
        user: UserComponent
    }
}