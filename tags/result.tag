<result>

	<spinner if={is_searching}></spinner>

	<div if={has_results} class="row row-wrap">

		<giphy each={ results } preview={ images.preview_gif.url } download={ images.original.url } >
			
		</giphy>

	</div>


	<script>

		// Resulted Array
		this.results = []

		// Listen for search started
		this.giphy.on('start', ()=> {

			// Show spineer
			this.has_results = false
			this.is_searching = true

			// Update DOM
			this.update()

		})

		// Listen for new results
		this.giphy.on('complete', (res) => {

			// Update results
			this.results = res.data

			// Show results
			this.is_searching = false
			this.has_results = true

			// Update DOM
			this.update()

		})

	</script>

</result>