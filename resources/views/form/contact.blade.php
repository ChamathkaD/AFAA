<form class="form-contact contact_form" action="{{ route('contact.store') }}" method="post" id="contactForm" novalidate="novalidate">

    @csrf

    <div class="row">

        <div class="col-12">
            <div class="form-group">
                <label for="message" class="d-none">Message</label>
                <textarea
                    class="form-control w-100"
                    name="message"
                    id="message"
                    cols="30"
                    rows="9"
                    onfocus="this.placeholder = ''"
                    onblur="this.placeholder = 'Enter Message'"
                    placeholder=" Enter Message"
                ></textarea>
            </div>
        </div>

        <div class="col-sm-12">
            <div class="form-group">
                <label for="email" class="d-none">Email</label>
                <input
                    class="form-control valid"
                    name="email"
                    id="email"
                    type="email"
                    onfocus="this.placeholder = ''"
                    onblur="this.placeholder = 'Enter email address'"
                    placeholder="Email"
                >
            </div>
        </div>

        <div class="col-12">
            <div class="form-group">
                <label for="subject" class="d-none">Subject</label>
                <input
                    class="form-control"
                    name="subject"
                    id="subject"
                    type="text"
                    onfocus="this.placeholder = ''"
                    onblur="this.placeholder = 'Enter Subject'"
                    placeholder="Enter Subject"
                >
            </div>
        </div>

    </div>

    <div class="form-group mt-3">
        <button type="submit" class="button button-contactForm boxed-btn">Send</button>
    </div>

</form>
